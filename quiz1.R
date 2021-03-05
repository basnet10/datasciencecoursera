x<- 4L
class(x)

x <- c(4, TRUE)
class(x)

x <- c(1,3, 5)
y <- c(3, 2, 10)
rbind(x,y)

x <- list(2, "a", "b", TRUE)
x[[2]] 

x <- 1:4
y <- 2
x+y

myData <- read.csv("data/hw1_data.csv")
myData

head(myData)

tail("myData")
tail(myData)

myData[47,]

missingValues <- is.na(myData)
missingValues

sub = subset(myData, is.na(Ozone))
nrow(sub)

sub = subset(myData, !is.na(Ozone), select = Ozone)
apply(sub, 2, mean) 

sub = subset(myData, Ozone > 31 & Temp > 90, select = Solar.R)
apply(sub, 2, mean)


sub = subset(myData, Month == 6, select = Temp)
apply(sub, 2, mean)


sub = subset(myData, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)


