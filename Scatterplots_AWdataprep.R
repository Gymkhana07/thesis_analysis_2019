# Created by Bo Simango
# M.Sc. candidate 
# Supervisor: Dr. Daniel Fuller
# Memorial University of Newfoundland

# Data source: Health Data Collector App - AW data 
# Output: ggplot/scatter plot 

# First install knitr library
# Knitr allows you to manipulate data 

library(knitr)

# Set working directory
setwd("C:/Thesis")
applewatch <- read.csv("health-data-Default.csv")

# Read Health Data Collector App data 
library(haven)
applewatch <- read.csv("health-data-Default.csv")

# Summary of statistical descriptives of each variable 
summary(applewatch)
summary(applewatch$DateTime)
summary(applewatch$Heart)
summary(applewatch$Calories)
summary(applewatch$Steps)
summary(applewatch$Distance)

#Scatterplot of Heart rate vs. Time 
library(ggplot2)
 scatter<- ggplot(applewatch, aes(x = DateTime, y = Heart)) + 
  geom_point() +
  xlab("Date and Time")+
  ylab("Heart rate")
  plot(scatter)
  
#Scatterplot of Calories vs. Time 
library(ggplot2)  
  scatter<- ggplot(applewatch, aes(x = DateTime, y = Calories)) + 
    geom_point() +
    xlab("Date and Time")+
    ylab("Calories")
  plot(scatter)  
  
#Scatterplot of Steps vs. Time 
  library(ggplot2)
  scatter<- ggplot(applewatch, aes(x = DateTime, y = Steps)) + 
    geom_point() +
    xlab("Date and Time")+
    ylab("Steps")
  plot(scatter)  

#Scatterplot of Distance vs. Time 
  library(ggplot2)
  scatter<- ggplot(applewatch, aes(x = DateTime, y = Distance)) + 
    geom_point() +
    xlab("Date and Time")+
    ylab("Distance")
  plot(scatter)  
  
  #Scatterplot of Distance vs. Time with color 
  library(ggplot2)
  scatter<- ggplot(applewatch, aes(x = Heart, y = Distance)) + 
    geom_point(aes(colour = factor(DateTime)), alpha = 1/5) +
    xlab("Date and Time")+
    ylab("Distance")
  plot(scatter_cat)     
  
  