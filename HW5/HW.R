data <- read.csv("Data.csv")

data.CO <- (data$CO_Emissions)
data.Fuel <- (data$Fuel_Cost_6000_Miles)

data.CO
data.Fuel

plot(data.Fuel,data.CO,main = "XY Scatter of CO_Emissions(mg/km) and FuelCost in 9600 km(Pound)",xlab = "FuelCost in 9600 km(Pound)",ylab = "CO_Emissions(mg/km)")

cc <- cor(data.Fuel,data.CO)
cd <- cc*cc
LRmodel <- lm(data.CO ~ data.Fuel)
cc
cd
LRmodel
plot(data.Fuel,data.CO,main = "Linear Regression of CO_Emissions(mg/km) and FuelCost in 9600 km(Pound)",xlab = "FuelCost in 9600 km(Pound)",ylab = "CO_Emissions(mg/km)")
abline(LRmodel)

