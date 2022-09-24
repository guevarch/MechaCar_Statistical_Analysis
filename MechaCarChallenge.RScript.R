setwd("C:/Users/16474/Desktop/Coding/MechaCar_Statistical_Analysis")
library(dplyr)
library(tidypredict)
df1 <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, data=df1)
summary(lm(mpg ~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, data=df1)) #summarize linear model
df2 <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- df2 %>% summarize(median=median(PSI), mean=mean(PSI), sd=sd(PSI), variance=var(PSI))
lot_summary <- df2 %>% group_by(Manufacturing_Lot) %>% summarize(median=median(PSI), mean=mean(PSI), sd=sd(PSI), variance=var(PSI))

install.packages("ggplot2")
library(ggplot2)

##vehicle weight
model <- lm(vehicle_weight ~ mpg,df1) #create linear model
yvals <- model$coefficients['mpg']*df1$mpg + model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(df1,aes(x=mpg,y=vehicle_weight)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model


##vehicle length
model <- lm(vehicle_length ~ mpg,df1) #create linear model
yvals <- model$coefficients['mpg']*df1$mpg + model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(df1,aes(x=mpg,y=vehicle_length)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

##AWD
model <- lm(AWD ~ mpg,df1) #create linear model
yvals <- model$coefficients['mpg']*df1$mpg + model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(df1,aes(x=mpg,y=AWD)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear mode

##ground_clearance
model <- lm(ground_clearance ~ mpg,df1) #create linear model
yvals <- model$coefficients['mpg']*df1$mpg + model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(df1,aes(x=mpg,y=ground_clearance)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear mode

##spoiler_angle
model <- lm(spoiler_angle ~ mpg,df1) #create linear model
yvals <- model$coefficients['mpg']*df1$mpg + model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(df1,aes(x=mpg,y=spoiler_angle)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear mode


