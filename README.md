# MechaCar_Statistical_Analysis

# Overview

The overview of this analysis is to perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes, collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, run t-tests to determine if the manufacturing lots are statistically different from the mean population, and design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Deliverable 1

The model predicts it well for some metrics - particularly the ones with the higher cor coeffecient and low p value. The low p-value suggests that we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- Linear Regression Results
- ---

 	Call:
	lm(formula = mpg ~ vehicle_weight + spoiler_angle + ground_clearance + 
	    AWD + vehicle_length, data = df1)

	Coefficients:
	     (Intercept)    vehicle_weight     spoiler_angle  ground_clearance               AWD    vehicle_length  
	      -1.040e+02         1.245e-03         6.877e-02         3.546e+00        -3.411e+00         6.267e+00 
	

- Summary Results
- ---


	- Call:
	summary(lm(formula = mpg ~ vehicle_weight + spoiler_angle + ground_clearance + 
	    AWD + vehicle_length, data = df1))

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

	Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

	Residual standard error: 8.774 on 44 degrees of freedom
	Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
	F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11**
	
- Correlation Results
- These results show the correlation coefficients for the following columns except for AWD. Vehicle length and ground cleareance have the strongest correlation to mpg.
- ---

	> cor(df1$mpg,df1$vehicle_weight) 
	[1] 0.09068314
	> cor(df1$mpg,df1$spoiler_angle)
	[1] -0.02083999
	> cor(df1$mpg,df1$ground_clearance)
	[1] 0.3287489
	> cor(df1$mpg,df1$vehicle_length)
	[1] 0.6094798
	
## Correlation Images
![image](https://user-images.githubusercontent.com/107594143/192338167-c7c22b4d-eda5-47ea-a4cb-f577a0eb0c90.png) ![image](https://user-images.githubusercontent.com/107594143/192338393-d40e707e-742d-4704-aa12-72dceef98c3b.png)
![image](https://user-images.githubusercontent.com/107594143/192338513-052c5df2-4e06-495b-94cc-3f1784cd10e9.png) ![image](https://user-images.githubusercontent.com/107594143/192338587-c17f0d2a-b4ce-4964-8e01-10568d24053b.png)

## Summary Statistics on Suspension Coils

![image](https://user-images.githubusercontent.com/107594143/192124585-cdc1feef-4af5-4a31-a192-3e7f7cdb05be.png)
![image](https://user-images.githubusercontent.com/107594143/192124612-64c84428-185d-4b80-a665-d45575bfaf55.png)


## T-Tests on Suspension Coils

### Welch Two Sample t-test
I tried doing a Welch Two Sample t-test for the different lots but I got the same values for all of them. I'm unsure why this came about.
 - Test 1
	data:  (sample_tablelot1$PSI) and (sample_tablelot2$PSI)
	t = 0, df = 298, p-value = 1
	alternative hypothesis: true difference in means is not equal to 0
	95 percent confidence interval:
	 -1.793521  1.793521
	sample estimates:
	mean of x mean of y 
	  1498.78   1498.78 

 - Test 2
	data:  (sample_tablelot1$PSI) and (sample_tablelot3$PSI)
	t = 0, df = 298, p-value = 1
	alternative hypothesis: true difference in means is not equal to 0
	95 percent confidence interval:
	 -1.793521  1.793521
	sample estimates:
	mean of x mean of y 
	  1498.78   1498.78 

 - Test 3
	data:  (sample_tablelot2$PSI) and (sample_tablelot3$PSI)
	t = 0, df = 298, p-value = 1
	alternative hypothesis: true difference in means is not equal to 0
	95 percent confidence interval:
	 -1.793521  1.793521
	sample estimates:
	mean of x mean of y 
	  1498.78   1498.78
### One Sample t-test
It is interesting to see that the data set with the largest variance has the lowest p-value.
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

## Study Design: MechaCar vs Competition

- A key metric that would be of interest to the consumer is the relationship of maintenance cost and the MSRP cost of the vehicle. The metrics we can test is the original MSRP and the average cost of maintenance from year 0 to 5. The null hypothesis is there is no relationship between cost of vehicle and cost of maintenance. The alternative hypothesis is there is a strong relationship between vehicle cost and the cost of maintenance. First we can test for the normality using shapiro test. Then we can use either the One Sample t-test or the Welch Two Sample t-test to determine the p-value. Then we compare p-value to the significance level - A large p (> 0.05) means the alternate hypothesis is weak, so you do not reject the null, and A small p (≤ 0.05), reject the null hypothesis. This is strong evidence that the null hypothesis is invalid. Another guideline to consider is this:
						-	If p > .10 → “not significant”
						-	If p ≤ .10 → “marginally significant”
						-	If p ≤ .05 → “significant”
						-	If p ≤ .01 → “highly significant.”
The data needed for the test are cost of car from year 0 to year 5, including decpreciating, inflation adjusted prices, regular scheduled maintenance costs from year 0 to 5 - excluding any recalls. We can also use a correlation matrix to determine the r value for cost of vehicle and maintenance cost.
 
