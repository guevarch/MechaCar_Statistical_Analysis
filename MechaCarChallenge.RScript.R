## Deliverable 1
setwd("C:/Users/16474/Desktop/Coding/MechaCar_Statistical_Analysis")
library(dplyr)
library(tidypredict)
df1 <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, data=df1)
summary(lm(mpg ~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, data=df1)) #summarize linear model

install.packages("ggplot2")
library(ggplot2)

##vehicle weight
model <- lm(vehicle_weight ~ mpg,df1) #create linear model
yvals <- model$coefficients['mpg']*df1$mpg + model$coefficients['(Intercept)'] #determine y-axis values from linear model
pltvehicle_weight <- ggplot(df1,aes(x=mpg,y=vehicle_weight)) #import dataset into ggplot2
pltvehicle_weight + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model


##vehicle length
model <- lm(vehicle_length ~ mpg,df1) #create linear model
yvals <- model$coefficients['mpg']*df1$mpg + model$coefficients['(Intercept)'] #determine y-axis values from linear model
pltvehicle_length <- ggplot(df1,aes(x=mpg,y=vehicle_length)) #import dataset into ggplot2
pltvehicle_length + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

##ground_clearance
model <- lm(ground_clearance ~ mpg,df1) #create linear model
yvals <- model$coefficients['mpg']*df1$mpg + model$coefficients['(Intercept)'] #determine y-axis values from linear model
pltground_clearance <- ggplot(df1,aes(x=mpg,y=ground_clearance)) #import dataset into ggplot2
pltground_clearance + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear mode

##spoiler_angle
model <- lm(spoiler_angle ~ mpg,df1) #create linear model
yvals <- model$coefficients['mpg']*df1$mpg + model$coefficients['(Intercept)'] #determine y-axis values from linear model
pltspoiler_angle <- ggplot(df1,aes(x=mpg,y=spoiler_angle)) #import dataset into ggplot2
pltspoiler_angle + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear mode

## Deliverable 2
df2 <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- df2 %>% summarize(median=median(PSI), mean=mean(PSI), sd=sd(PSI), variance=var(PSI))
lot_summary <- df2 %>% group_by(Manufacturing_Lot) %>% summarize(median=median(PSI), mean=mean(PSI), sd=sd(PSI), variance=var(PSI))


## Deliverable 3

### Perform Welch Two Sample t-test
subsetlot1 = subset(df2, Manufacturing_Lot = "Lot1")
subsetlot2 = subset(df2, Manufacturing_Lot = "Lot2")
subsetlot3 = subset(df2, Manufacturing_Lot = "Lot3")
sample_tablelot1 <- subsetlot1 %>% sample_n(150)
sample_tablelot2 <- subsetlot2 %>% sample_n(150)
sample_tablelot3 <- subsetlot3 %>% sample_n(150)
#1&2
t.test((sample_tablelot1$PSI),(sample_tablelot2$PSI))
#1&3
t.test((sample_tablelot1$PSI),(sample_tablelot3$PSI))
#2&3
t.test((sample_tablelot2$PSI),(sample_tablelot3$PSI))

### Peform t-test on Lot 1
t.test(subset(df2,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Peform t-test on Lot 2
t.test(subset(df2,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Peform t-test on Lot 3
t.test(subset(df2,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)




