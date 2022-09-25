# MechaCar_Statistical_Analysis

# Overview

## Deliverable 1

- Questions: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

 - Linear Regression

 	- Call:
	lm(formula = mpg ~ vehicle_weight + spoiler_angle + ground_clearance + 
	    AWD + vehicle_length, data = df1)

	Coefficients:
	     (Intercept)    vehicle_weight     spoiler_angle  ground_clearance               AWD    vehicle_length  
	      -1.040e+02         1.245e-03         6.877e-02         3.546e+00        -3.411e+00         6.267e+00 

- Summary 

	- Call:
	lm(formula = mpg ~ vehicle_weight + spoiler_angle + ground_clearance + 
	    AWD + vehicle_length, data = df1)

	Residuals:
	     Min       1Q   Median       3Q      Max 
	-19.4701  -4.4994  -0.0692   5.4433  18.5849 

	- Coefficients:
			   Estimate Std. Error t value Pr(>|t|)    
	(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
	vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
	spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
	ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
	AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
	vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
	---
	Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

	Residual standard error: 8.774 on 44 degrees of freedom
	Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
	F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11**

## Summary Statistics on Suspension Coils

## T-Tests on Suspension Coils

### Welch Two Sample t-test
 - Test 1
	data:  (sample_table$PSI) and (sample_table2$PSI)
	t = 0, df = 298, p-value = 1
	alternative hypothesis: true difference in means is not equal to 0
	95 percent confidence interval:
	 -1.793521  1.793521
	sample estimates:
	mean of x mean of y 
	  1498.78   1498.78 

 - Test 2
	data:  (sample_table$PSI) and (sample_table2$PSI)
	t = 0, df = 298, p-value = 1
	alternative hypothesis: true difference in means is not equal to 0
	95 percent confidence interval:
	 -1.793521  1.793521
	sample estimates:
	mean of x mean of y 
	  1498.78   1498.78 

 - Test 3
	data:  (sample_table$PSI) and (sample_table2$PSI)
	t = 0, df = 298, p-value = 1
	alternative hypothesis: true difference in means is not equal to 0
	95 percent confidence interval:
	 -1.793521  1.793521
	sample estimates:
	mean of x mean of y 
	  1498.78   1498.78
### One Sample t-test

- Test 1
	data:  subset(df2, Manufacturing_Lot == "Lot1")$PSI
	t = 0, df = 49, p-value = 1
	alternative hypothesis: true mean is not equal to 1500
	95 percent confidence interval:
	 1499.719 1500.281
	sample estimates:
	mean of x 1500
	
- Test 2

	data:  subset(df2, Manufacturing_Lot == "Lot2")$PSI
	t = 0.51745, df = 49, p-value = 0.6072
	alternative hypothesis: true mean is not equal to 1500
	95 percent confidence interval:
	 1499.423 1500.977
	sample estimates:
	mean of x 1500.
	
- Test 3
	data:  subset(df2, Manufacturing_Lot == "Lot3")$PSI
	t = -2.0916, df = 49, p-value = 0.04168
	alternative hypothesis: true mean is not equal to 1500
	95 percent confidence interval:
	 1492.431 1499.849
	sample estimates:
	mean of x 1496.14

## Deliverable 4
