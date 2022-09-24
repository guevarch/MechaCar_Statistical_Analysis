setwd("C:/Users/16474/Desktop/Coding/MechaCar_Statistical_Analysis")
df1 <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(vehicle_length ~mpg+spoiler_angle+ground_clearance+AWD+vehicle_weight+vehicle_length, data=df1)
summary(lm(mpg ~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, data=df1)) #summarize linear model
df2 <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- df2 %>% summarize(median=median(PSI), mean=mean(PSI), sd=sd(PSI), variance=var(PSI))
lot_summary <- df2 %>% group_by(Manufacturing_Lot) %>% summarize(median=median(PSI), mean=mean(PSI), sd=sd(PSI), variance=var(PSI))



