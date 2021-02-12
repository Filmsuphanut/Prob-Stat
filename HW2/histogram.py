import matplotlib.pyplot as plt
#from numpy.random import normal
import pandas as pd
import math


data = pd.read_csv('Data.csv')
w = 10#width of block #ความกว้างของอันตรภาคชั้น = 2
n = math.ceil((data['CO_Emissions'].max() - data['CO_Emissions'].min())/w)
m = math.ceil((data['Fuel_Cost_6000_Miles'].max() - data['Fuel_Cost_6000_Miles'].min())/w)
#y = data.iloc[:,10]
#plt.hist(y)

#data_F_sort = data.sort_values(by=['CO_Emissions'])


#plt.hist(data['CO_Emissions'] , bins = n, edgecolor='black', linewidth=0.25)
#plt.title("Histogram of CO Emissions")
#plt.xlabel("CO_Emissions")
#plt.ylabel("Frequency of car")

plt.hist(data['Fuel_Cost_6000_Miles'] , bins = m, edgecolor='black', linewidth=0.25)
plt.title("Histogram of Fuel Cost in 6000 Miles")
plt.xlabel("Fuel_Cost_6000_Miles")
plt.ylabel("Frequency of car")

plt.show()