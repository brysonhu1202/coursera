# Week 1 Quiz 
getwd()
read.csv("hw1_data.csv", nrows = 2) #读取前两行


data <-read.csv("hw1_data.csv")
data

none <- complete.cases(data["Ozone"]) #Ozone去NA
summary(none)
none
Ozone <- data["Ozone"]
Ozone <- Ozone[none,]
summary(Ozone)
Ozone

data <-read.csv("hw1_data.csv")
data
solar <- subset(data, Ozone > 31 & Temp >90, select = c(Ozone, Temp, Solar.R))
summary(solar)

Temp <- subset(data, Month == 6, select = c(Month, Temp))
summary(Temp)

Ozone <- subset(data, Month == 5, select = c(Month, Temp, Ozone))
summary(Ozone)


x <- c(4, TRUE, "a") 
class(x)
x[1]

x <- 1:4
y <- 2:3
x + y