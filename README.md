# MechaCar_Statistical_Analysis

# Overview

# Deliverable 1

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

# Deliverable 2

# Deliverable 3 - ## T-Tests on Suspension Coils

 - Test 1
	data:  log10(sample_table$PSI) and log10(sample_table2$PSI)
	t = -0.62759, df = 147.71, p-value = 0.5312
	alternative hypothesis: true difference in means is not equal to 0
	95 percent confidence interval:
	 -0.0010390685  0.0005381693
	sample estimates:
	mean of x mean of y 
	  3.17566   3.17591

 - Test 2
	data:  log10(sample_table$PSI) and log10(sample_table2$PSI)
	t = 0.038021, df = 147.84, p-value = 0.9697
	alternative hypothesis: true difference in means is not equal to 0
	95 percent confidence interval:
	 -0.0006049680  0.0006287042
	sample estimates:
	mean of x mean of y 
	 3.175832  3.175821 

 - Test 3
	data:  log10(sample_table$PSI) and log10(sample_table2$PSI)
	t = 0.11231, df = 147.99, p-value = 0.9107
	alternative hypothesis: true difference in means is not equal to 0
	95 percent confidence interval:
	 -0.0008958496  0.0010038147
	sample estimates:
	mean of x mean of y 
	 3.175649  3.175595
