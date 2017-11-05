# Assignment 8 : 

#1. Statistical Analysis of dataset "faithful"

data("faithful")        # loading and attaching the data
attach(faithful)
str(faithful)           # checking the structure of dataset
  
mean(faithful$eruptions)                # 1. mean of eruption duration
 
median(faithful$eruptions)              #2. median of the eruption duration

round(quantile(faithful$eruptions),3)   #3. quartiles of the eruption durations

#4. 32nd , 57th and 98th percentiles 
round(quantile(faithful$eruptions,c(0.32,0.57,0.98)),3)

range(faithful$eruptions)            #5 range of eruption durations

IQR(faithful$eruptions)             #6 Interquartile range of eruption durations

sd(faithful$eruptions)               #7 standard deviation of eruption duration

var(eruptions)                      #8 variance of eruption duration

library(moments)
skewness(eruptions)                 #9 skewness of eruption duration

kurtosis(eruptions)                 #10 kurtosis of eruption duration

stem(eruptions)                   #11 stem and leaf plot of eruption duration

#12 scatter plot :  duration vs waiting waiting point
plot(eruptions,waiting,main="Sactter Plot : Eruption duration vs Waiting time",
                              xlab="eruption duration",ylab="Waiting time")

#13 histogram of eruption duration
hist(eruptions,main = "Histogram of eruption duration",col="blue",xlab="Eruption duration")

#14 boxplot of eruption duration

boxplot(eruptions,axes=TRUE,main="Box plot of eruption duration")
text(y=boxplot.stats(eruptions)$stats,labels = boxplot.stats(eruptions)$stats,x=1.3)
                              
#15 corvarianvce coefficient between eruptions and waiting
cov(eruptions,waiting)

#16 correlation coefficient between eruptions and waiting
cor(eruptions,waiting)
         

#2. Analysis of dataset "InsectSprays"

data("InsectSprays")   # loading and attaching the dataset
attach(InsectSprays)
str(InsectSprays)

par(mfrow=c(1,2))
#boxplots for spray type A
boxplot(count[spray=="A"],axes=TRUE,main="Box plot of Spray A")
text(y=boxplot.stats(count[spray=="A"])$stats,labels = boxplot.stats(count[spray=="A"])$stats,x=1.35)

#boxplots for spray type B
boxplot(count[spray=="B"],axes=TRUE,main="Box plot of Spray B")
text(y=boxplot.stats(count[spray=="B"])$stats,labels = boxplot.stats(count[spray=="B"])$stats,x=1.35)


#boxplots for spray type C
boxplot(count[spray=="C"],axes=TRUE,main="Box plot of Spray C")
text(y=boxplot.stats(count[spray=="C"])$stats,labels = boxplot.stats(count[spray=="C"])$stats,x=1.35)

#boxplots for spray type D
boxplot(count[spray=="D"],axes=TRUE,main="Box plot of Spray D")
text(y=boxplot.stats(count[spray=="D"])$stats,labels = boxplot.stats(count[spray=="D"])$stats,x=1.35)

#boxplots for spray type E
boxplot(count[spray=="E"],axes=TRUE,main="Box plot of Spray E")
text(y=boxplot.stats(count[spray=="E"])$stats,labels = boxplot.stats(count[spray=="E"])$stats,x=1.35)

#boxplots for spray type F
boxplot(count[spray=="F"],axes=TRUE,main="Box plot of Spray F")
text(y=boxplot.stats(count[spray=="F"])$stats,labels = boxplot.stats(count[spray=="A"])$stats,x=1.35)





