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



## Homework
e_quakes <- datasets::quakes

head(e_quakes,10)
tail(e_quakes,10)

#summary of the data
summary(e_quakes$depth)
summary(e_quakes)

plot(e_quakes$depth)
plot(e_quakes$mag,e_quakes$depth,type="p")
plot(airquality)

plot(e_quakes$depth, type="l")

plot(e_quakes$mag , xlab='Longitude', ylab='Magnitude', main='Earthquakes', col='blue')

#Horizontal Bar plot
barplot(e_quakes$mag, main='Magnitude of Earthquakes', ylab='Ozone levels',col='green',horiz=TRUE,axes=T)

#histogram
hist(e_quakes$mag)
hist(e_quakes$depth)

#from this we can infer that this is Bimodal data 

#Single Boxplot
boxplot(e_quakes$depth)$out
boxplot(e_quakes$depth,main="Boxplot")

#Multiple box plots
boxplot(e_quakes[,0:4],main='Multiple')

#margin of the grid(mar),
#no of rows and columns(mfrow),
#whether a border is to be included(bty)
#and position of the
#labels(las:1 for horizontal, las:0 for vertical)
#bty- box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")

# standard deviation
sd(e_quakes$depth)
var(e_quakes$depth)

skewness(e_quakes$depth)

kurtosis(e_quakes$depth)
