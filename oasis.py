#!/usr/bin/env python3
"""
Pull 5-minute CAISO load + fuel-mix time-series, roll them up to daily MWh,
and export tidy CSV / Parquet files.

Tested with:
  • gridstatus 0.28.0
  • pandas     2.3.1
"""

import pandas as pd
from pathlib import Path
import gridstatus


# ──────────────────────────────────────────────────────────────────────────────
# Helper ─ converts any gridstatus 5-minute dataframe (fuel mix OR load)
# ──────────────────────────────────────────────────────────────────────────────
def five_min_to_mwh(df: pd.DataFrame) -> pd.DataFrame:
    """
    Convert 5-minute MW snapshots to *daily* MWh totals.

    • Works with both the older single-column 'Time' schema and
      the newer 'Interval Start' / 'Interval End' schema that
      gridstatus introduced in v0.20.0.
    • Returns a frame indexed by calendar date (US/Pacific),
      with one column per numeric series.
    """
    df = df.copy()

    # 1) pick a timestamp column to index on
    ts_col = (
        "Time" if "Time" in df.columns        # gridstatus < 0.20
        else "Interval Start"                 # gridstatus ≥ 0.20
    )
    df[ts_col] = pd.to_datetime(df[ts_col])
    df.set_index(ts_col, inplace=True)

    # 2) multiply **only numeric columns** by 5-minute interval length
    num_cols = df.select_dtypes(include="number").columns
    df[num_cols] = df[num_cols] * (5 / 60.0)   # MW × (5/60 h) → MWh

    # 3) resample to daily sums (numeric-only so timestamps aren’t added)
    daily = (
        df[num_cols]
        .resample("D")                         # calendar day
        .sum(min_count=1)                      # leave NaN if whole day missing
        .reset_index(names="Date")             # to ordinary column
    )
    return daily


# ──────────────────────────────────────────────────────────────────────────────
# Parameters – tweak as needed
# ──────────────────────────────────────────────────────────────────────────────
START = pd.Timestamp("2015-01-01")   # ask as far back as CAISO keeps
END   = pd.Timestamp.today().normalize()

OUT_DIR = Path.cwd()                 # writes into the working folder
OUT_DIR.mkdir(exist_ok=True)

# ──────────────────────────────────────────────────────────────────────────────
# Pull data from CAISO OASIS via gridstatus
# ──────────────────────────────────────────────────────────────────────────────
iso = gridstatus.CAISO()             # helper class for CAISO

print("▶ Downloading fuel-mix (this can take a while)…")
mix_raw  = iso.get_fuel_mix(start=START, end=END, verbose=True)

print("▶ Downloading system load …")
load_raw = iso.get_load( start=START, end=END, verbose=True)

# ──────────────────────────────────────────────────────────────────────────────
# Convert 5-minute snapshots → daily totals
# ──────────────────────────────────────────────────────────────────────────────
mix_daily  = five_min_to_mwh(mix_raw)

load_daily = (
    five_min_to_mwh(load_raw)
      .rename(columns={"Load": "CAISO_Load_MWh"})   # clearer name
)

# merge so every date has fuel & load in one row
daily = mix_daily.merge(load_daily, on="Date", how="inner")

# add %-share columns for each fuel
fuel_cols = mix_daily.columns.drop("Date")
for col in fuel_cols:
    daily[f"{col}_share"] = daily[col] / daily["CAISO_Load_MWh"]

# ──────────────────────────────────────────────────────────────────────────────
# Persist results
# ──────────────────────────────────────────────────────────────────────────────
csv_path     = OUT_DIR / "caiso_daily_fuel_mix_and_load.csv"

daily.to_csv(csv_path, index=False)

print(f"✔ Done!  CSV → {csv_path}")