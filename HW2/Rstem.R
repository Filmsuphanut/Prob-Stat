data <- read.csv("Data7.csv")
data

data <- data[order(data$Fuel_Cost_6000_Miles),]
data
plot(data$Fuel_Cost_6000_Miles,data$CO_Emissions,main = "XY Scatter of Fuel cost 6000 Miles and CO Emissions",ylab = "CO Emissions (mg/km)",xlab = "Fuel cost 6000 Miles (Pound)",type = 'p')


hist(data$CO_Emissions,xlim=c(0,2100),ylim=c(0,80),breaks=100,xlab = "CO_Emissinos (mg/km)", main="HISTOGRAM OF CO Emissions")
hist(data$Fuel_Cost_6000_Miles,xlim=c(0,2100),ylim=c(0,80),breaks=100,xlab = "Fuel_cost_6000_Miles (Pound)", main="HISTOGRAM OF Fuel Cost 6000 Miles")

st_co <- stem(data$CO_Emissions,scale = 2,width = 180, atom = 1e-08)

stem(data$CO_Emissions,scale = 10,width = 180, atom = 1e-08)



jpeg(filename="stem.jpeg",width=2000,height=2000, units="px",pointsize=30)
plot.new()
tmp <- capture.output(stem(data$CO_Emissions,scale = 2,width = 180, atom = 1e-08))
text( 0,1, paste(tmp, collapse='\n'), adj=c(0,1), family='mono' )
dev.off() 



stem(data$Fuel_Cost_6000_Miles,scale = 20,width = 180, atom = 1e-08)

jpeg(filename="stem2.jpeg",width=2500,height=2000, units="px",pointsize=30)
plot.new()
tmp <- capture.output(stem(data$Fuel_Cost_6000_Miles,scale = 2,width = 180, atom = 1e-08))
text( 0,1, paste(tmp, collapse='\n'), adj=c(0,1), family='mono' )
dev.off() 




boxplot(data$CO_Emissions,
        data=airquality,
        main="Boxplot of CO Emissions",
        ylab="CO Emissinos (mg/km)"
        #col="orange",
        #border="brown"
)

boxplot(data$Fuel_Cost_6000_Miles,
        data=airquality,
        main="Boxplot of Fuel Cost 6000 Miles",
        ylab="Fuel cost 6000 Miles (Pound)"
        #col="orange",
        #border="brown"
)


#CO
CO_Emissions.mean <-  mean(data$CO_Emissions,na.rm = TRUE)
print(CO_Emissions.mean)
CO_Emissions.median <-  median(data$CO_Emissions,na.rm = TRUE)
print(CO_Emissions.median)


getmode <- function(v) {
        uniqv <- unique(v)
        uniqv[which.max(tabulate(match(v, uniqv)))]
}

CO_Emissions.mode <- getmode(data$CO_Emissions)
print(CO_Emissions.mode)

CO_Emissions.sd <- sd(data$CO_Emissions,na.rm = TRUE)
print(CO_Emissions.sd)






#Fuel
Fuel.mean <-  mean(data$Fuel_Cost_6000_Miles,na.rm = TRUE)
print(Fuel.mean)
Fuel.med <-  median(data$Fuel_Cost_6000_Miles,na.rm = TRUE)
print(Fuel.med)


getmode <- function(v) {
        uniqv <- unique(v)
        uniqv[which.max(tabulate(match(v, uniqv)))]
}

Fuel.mo <- getmode(data$Fuel_Cost_6000_Miles)
print(Fuel.mo)

Fuel.sd <- sd(data$Fuel_Cost_6000_Miles,na.rm = TRUE)
print(Fuel.sd)



