import stemgraphic
import pandas as pd
import matplotlib.pyplot as plt

#data = [16, 25, 47, 56, 23, 45, 19, 55, 44, 27] 
data = pd.read_csv('test.csv')


#data_sort = data.sort_values(by=['CO_Emissions'])


#stemgraphic.stem_graphic(data_sort['CO_Emissions'], scale = 10) 
stemgraphic.stem_graphic(data['CO_Emissions'], scale = 100)
plt.show()