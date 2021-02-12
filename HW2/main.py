import matplotlib.pyplot as plt
import pandas as pd


data = pd.read_csv('Data.csv')

data_F_sort = data.sort_values(by=['CO_Emissions'])

plt.figure(figsize=(6.8,4.2))
plt.plot(data_F_sort['CO_Emissions'],data_F_sort['Fuel_Cost_6000_Miles'])
plt.ylabel('Fuel_Cost_6000_Miles')
plt.xlabel('CO_Emissions')
plt.show()