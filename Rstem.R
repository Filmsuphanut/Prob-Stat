data <- read.csv("Data7.csv")
data

data <- data[order(data$CO_Emissions),]
data

hist(data$CO_Emissions,xlim=c(0,2100),ylim=c(0,80),breaks=100,xlab = "CO_Emissinos (g/km)", main="HISTOGRAM OF CO Emissions")
hist(data$Fuel_Cost_6000_Miles,xlim=c(0,2100),ylim=c(0,80),breaks=100,xlab = "Fuel_cost_6000_Miles (Pound)", main="HISTOGRAM OF Fuel Cost 6000 Miles")
stem(data$CO_Emissions,scale = 10,width = 180, atom = 1e-08)
stem(data$Fuel_Cost_6000_Miles,scale = 10,width = 180, atom = 1e-08)
plot(data$CO_Emissions,data$Fuel_Cost_6000_Miles,type = 'b')

boxplot(data$CO_Emissions,
        data=airquality,
        main="boxplot of CO_Emissions",
        xlab="CO_Emissions",
        ylab="q of CO_Emissions",
        col="orange",
        border="brown"
)

