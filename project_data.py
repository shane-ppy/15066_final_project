import numpy as np
import os, pathlib
import pandas as pd
FILE_DIR = pathlib.Path(__file__).parent.resolve()

# Fuel Types
FUEL = ['coal', 'lng', 'nuclear', 'hydro', 'wind', 'solar', 'ev']

# Carbon Emission in gCO2e per kWh for each fuel type
E = np.array([820, 490, 12, 24, 11.5, 44.5, 0,])

# Energy Cost in $/kWh for Unit Production for each fuel type
C = np.array([10, 17.2, 6.1, 1.75, 6.1, 4.1, 0])

# Number of fuel types
NUMFT = len(E)

# Maximum total CO2 emissions across all fuels in gCO2e, state level
MAXCO2 = 13.8*1e7 # TODO this may be wayy to big

# Total energy demand per capita in kWh, state level
FNAME = os.path.join(FILE_DIR, "EnergyDemandByStateData.csv")
STATES = pd.read_csv(FNAME, index_col=0, header=0)

# EV Capacity (avg) in kWh
EVC_MAX = 80

# Daily EV energy usage in kWh
EVC_MIN = 5*11106/3.5/365 # safety factor * avg annual miles / avg miles/kWh / days per year 

# Population (of the county)
# FNAME = os.path.join(FILE_DIR, "EVs.csv") # TODO fix filename
# EVS = pd.read_csv(FNAME, dtype={'county': str, 'population': float, 'numEV': float})
# EVS['EVB_maxcapacity'] = EVS['numEV'] * EVC_MAX
# EVS['EVB_mincapacity'] = EVS['numEV'] * EVC_MIN

### Approach 1
MAXGEN = [1, 1, .33, 1, .33, .25, 0] #TODO, expressed as percentage of demand
MINGEN = [0, 0, .2, 0, 0, 0, 0,] #TODO, should be expressed as a minimum kWh number??
# TODO how to account for these going up with EV bank capacity? constrain dec vars for these three + ev bank to their sum, also individual constrs

### Approach 3
HRLYDEMAND = np.array([1, 1, 1, 1, 1, 1,
                       1, 1, 1, 1, 1, 1,
                       1, 1, 1, 1, 1, 1,
                       1, 1, 1, 1, 1, 1,]) # TODO Real data, maybe normalized then multiply by DEMANDPC['<state>']
HRLYMAXGEN = pd.DataFrame() # TODO 7x24 array, 1 and 2 are inf, others need research. Express as pct of demand so it can scale to county
HRLYPRICE = pd.DataFrame() # TODO 7x24 array, most are constant. Units $/kWh