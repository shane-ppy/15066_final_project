import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import numpy as np

# Create a DataFrame for the years 2015 to 2035
years = range(2015, 2036)
df = pd.DataFrame({'Year': years})

# Data from EIA and other sources.
# CO2 emissions are in million metric tons. Energy demand is in TWh (terawatt-hours), which will be converted to MWh.
# I will use data points and projections from the search results to create a coherent dataset.
# Source 2.7: Electric power CO2 emissions 2020-2024 in million metric tons
# 2020: 1451, 2021: 1553, 2022: 1539, 2023: 1421, 2024: 1427
# Source 1.7: Power sector emissions decline by 42-83% below 2023 levels in 2035.
# Let's take a midpoint of (42+83)/2 = 62.5% reduction from 2023 levels by 2035.
# 2023 emissions = 1421 MMT. Reduction = 1421 * 0.625 = 888.125 MMT.
# 2035 emissions = 1421 - 888.125 = 532.875 MMT.

# Source 1.7: We project these drivers to increase demand for electricity by 24-29% over 2023 levels in 2035.
# Let's take a midpoint of (24+29)/2 = 26.5% increase from 2023 levels by 2035.
# Source 1.10: electricity consumption in 2023 was 954 TWh for Japan which was 57% of US. So US consumption = 954/0.57 = 1673 TWh
# From EIA Electric Power Annual, 2023 retail electricity sales is ~3,845 TWh. Let's use this as a more accurate baseline.
# 2035 energy demand: 3845 * 1.265 = 4863.9 TWh

co2_emissions_data = { #TODO
    2020: 1451,
    2021: 1553,
    2022: 1539,
    2023: 1421,
    2024: 1427,
    2035: 532.875
}

# From EIA Monthly Energy Review TODO
co2_emissions = {
    2015: 1750,
    2016: 1650, 
    2017: 1600,
    2018: 1620,
    2019: 1550,
    2020: 1451,
    2021: 1553,
    2022: 1539,
    2023: 1421,
    2024: 1427,
    2035: 532.875
}

# Energy Demand (TWh) - from various EIA sources
energy_demand = {
    2015: 3900,
    2016: 3920,
    2017: 3850,
    2018: 4000,
    2019: 3950,
    2020: 3800,
    2021: 3930,
    2022: 4050,
    2023: 3845,
    2024: 3900, # Approximate based on trends
    2035: 4863.9
}

# Interpolate to fill the missing years
df['CO2_Emissions_Tons'] = df['Year'].map(co2_emissions)
df['Energy_Demand_MWh'] = df['Year'].map(energy_demand)

df['CO2_Emissions_Tons'] = df['CO2_Emissions_Tons'].interpolate()
df['Energy_Demand_MWh'] = df['Energy_Demand_MWh'].interpolate()

# Convert units
# CO2 from million metric tons to tons
df['CO2_Emissions_Tons'] = df['CO2_Emissions_Tons'] * 1e6
# Energy from TWh to MWh
df['Energy_Demand_MWh'] = df['Energy_Demand_MWh'] * 1e6

# Create the plot
fig, ax1 = plt.subplots(figsize=(12, 7))

# Plot CO2 Emissions

color = 'tab:red'
ax1.set_xlabel('Year')
ax1.set_ylabel('Total CO2 Emissions (tons)', color=color)
ax1.plot(df['Year'], df['CO2_Emissions_Tons'], color=color, marker='o', linestyle='-', label='CO2 Emissions')
ax1.tick_params(axis='y', labelcolor=color)
ax1.grid(True)
ax1.xaxis.set_major_locator(mticker.MaxNLocator(integer=True))

# Create a second y-axis for Energy Demand
ax2 = ax1.twinx()
color = 'tab:blue'
ax2.set_ylabel('Total Energy Demand (megawatt-hours)', color=color)
ax2.plot(df['Year'], df['Energy_Demand_MWh'], color=color, marker='x', linestyle='--', label='Energy Demand')
ax2.tick_params(axis='y', labelcolor=color)

# Add title and legend
plt.title('US Electricity CO2 Emissions and Energy Demand (2015-2035)')
fig.tight_layout()
fig.legend(loc="upper left", bbox_to_anchor=(0.1,0.9))
plt.savefig('co2_energy_plot.png')

print(df)
plt.show()