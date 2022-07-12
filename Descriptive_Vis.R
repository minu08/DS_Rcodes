airquality<- datasets::airquality

#top 10 and last 10 rows
head(airquality,10)
tail(airquality,10)

df<-airquality[,-6]

#summary of the data
summary(airquality$Ozone)
summary(airquality)
summary(airquality$Wind)


##########
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)

#points and lines
plot(airquality$Wind, type="l") #p: points , l:lines, b: both
plot(airquality$Wind , xlab='Ozone Concentration', ylab='No of Instances', main='Ozone levels in NY city', col='blue')

#Histogram
hist(airquality$Temp)
hist(airquality$Temp,main='SolarRadiation values in air',xlab='Solar rad',col='blue')

#Single Boxplot
boxplot(airquality$Wind)$out
boxplot(airquality$Wind,main="Boxplot")

#Multiple box plots
boxplot(airquality[,1:4],main='Multiple')

#margin of the grid(mar),
#no of rows and columns(mfrow),
#whether a border is to be included(bty)
#and position of the
#labels(las:1 for horizontal, las:0 for vertical)
#bty- box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind,type="p")
plot(airquality$Ozone,type="l")
barplot(airquality$Ozone, main='Ozone concentration in air', xlab='Ozone levels',col='green',horiz=TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='Multiple Box plots')