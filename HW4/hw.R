data <- read.csv("Data.csv")

dataCO.sort <- sort(data$CO_Emissions)
dataCO.mean <- mean(dataCO.sort)
dataCO.sd <- sd(dataCO.sort)
n <- length(dataCO.sort)
n

dataCO.mean
dataCO.sd

alpha <- 0.1
alpha

dataCO.z <- qnorm(p=alpha/2 , lower.tail=FALSE)
dataCO.z


lowerbound <- (dataCO.mean - ( dataCO.z * dataCO.sd/sqrt(n) ))
upperbound <- (dataCO.mean + ( dataCO.z * dataCO.sd/sqrt(n) ))

con.in <- c(lowerbound,upperbound)
con.in

dataCO.sort
ran <- sample(dataCO.sort,500)
ran.sort <- sort(ran)

ran.mean <- mean(ran)

ran.mean
ran.sd <- sd(ran)


dataCO.dnorm <- dnorm(dataCO.sort,dataCO.mean,dataCO.sd)
plot(dataCO.sort,dataCO.dnorm,type = 'l',main ="CI 90% of Mean", ylab="Probability Density",xlab = "CO_Emissions (mg/km)",xlim=c(0,2000),ylim=c(0,0.0015))
abline(v=upperbound,col = 'blue')
abline(v=lowerbound,col = 'red')
abline(v=dataCO.mean,col = 'green')



#dataCO.dnorm <- dnorm(ran.sort,ran.mean,ran.sd)
#plot(ran.sort,dataCO.dnorm,type = 'l',main ="Probability Density of CO Emissions", ylab="Probability Density",xlab = "CO_Emissions (mg/km)",xlim=c(0,2100),ylim=c(0,0.0025))
