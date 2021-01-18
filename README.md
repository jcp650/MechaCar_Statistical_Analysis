# MechaCar Statistical Analysis

This project seeks to provide data for a prototype car towards the goal of solving production issues and delays. Statistical Analysis packages in R were used to provide actionable insights into the issues present in production and manufacturing. 

## Linear Regression to Predict MPG

According to this linear regression model (Figure 1), ground clearance and vehicle length are statistically unlikely to add variance to the linear model. This is because the p-values for these two variables are quite small, which makes them statistically insignificant. This means that ground clearance and vehicle length are significantly impacting the prototype car's miles per gallon. The slope of this linear model is 0.7419, which indicates that about 74.2% if the data fits this model. This is determined by the multiple r squared, as shown in Figure 1. This linear model is 74.2% effective in showing predicting the miles per gallon of the protoype car, with emphasis on the relationship between miles per gallon and ground clearance and vehicle length.

### Figure 1
![](images/mpg_lr_image.png)

## Summary Statistics on Suspension Coils

The summary table in Figure 2 shows that for all of the lots, the required variance of under 100 pounds PSI for the suspension coils is met. However, when viewing the variance by manufacturing lot (Figure 3), it is evident that lot 3 is above the required variance at about 170.29. This indicates that manufacturing lot 3 is the only lot where the variance is above the specifications needed to properly produce the suspension coils.

### Figure 2
![](images/total_summary.png)

### Figure 3
![](images/lot_summary.png)

