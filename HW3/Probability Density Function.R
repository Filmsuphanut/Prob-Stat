data <- read.csv("Data7.csv")

data.seq <- seq(1,709,length = 709)
data.seq
datadiv.seq <- data.seq/709
datadiv.seq

dataCO.sort <- sort(data$CO_Emissions)
dataCO.med <- median(dataCO.sort)
dataCO.sd <- sd(dataCO.sort)

dataCO.dnorm <- dnorm(dataCO.sort,dataCO.med,dataCO.sd)

plot(dataCO.sort,dataCO.dnorm,type = 'l',main ="Probability Density of CO Emissions", ylab="Probability Density",xlab = "CO_Emissions (mg/km)",xlim=c(0,2100),ylim=c(0,0.0025))

plot(dataCO.sort,datadiv.seq,type = 'l',main = "Cumulative Probability of CO Emissions" ,ylab="Cumulative Probability",xlab = "CO_Emissions (mg/km)")


dataFuel.sort <- sort(data$Fuel_Cost_6000_Miles)
dataFuel.med <- median(dataFuel.sort)
dataFuel.sd <- sd(dataFuel.sort)

dataFuel.dnorm <- dnorm(dataFuel.sort,dataFuel.med,dataFuel.sd)
plot(dataFuel.sort,dataFuel.dnorm,type='l',xlim=c(0,2100),ylim=c(0,0.0025),main ="Probability Density of Fuel Cost 6000 Miles", ylab="Probability Density",xlab = "Fuel Cost 6000 Miles (Pound)")

plot(dataFuel.sort,datadiv.seq,type = 'l',main = "Cumulative Probability of Fuel Cost 6000 Miles",ylab="Cumulative Probability",xlab = "Fuel Cost 6000 Miles (Pound)")
