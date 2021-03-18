data <- read.csv("Data.csv")
data <- data$CO_Emissions
data <- sort(data)
data
n <- length(data)
n

data.med <- median(data)
data.sd <- sd(data)

data.med
data.sd

alpha <- (1-(95/100))
alpha

data.z <- qnorm(p=alpha/2 , lower.tail=FALSE)
data.z


lowerbound <- (data.med - ( data.z * data.sd/sqrt(n) ))
upperbound <- (data.med + ( data.z * data.sd/sqrt(n) ))

lowerbound
upperbound
