import matplotlib.pyplot as plt
import pandas as pd


data = pd.read_csv('Data.csv')

data_F_sort = data.sort_values(by=['Fuel_Cost_6000_Miles'])

plt.figure(figsize=(6.8,4.2))
plt.plot(data_F_sort['Fuel_Cost_6000_Miles'], data_F_sort['CO_Emissions'])
plt.xlabel('Fuel_Cost_6000_Miles')
plt.ylabel('CO_Emissions')
plt.show()