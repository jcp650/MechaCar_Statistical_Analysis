## Deliverable 1
# load packages
library(dplyr)
library(tidyverse)

# Create df with mpg data
df <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Perform linear regression with all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df)

# Calculate summary statistics for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df))

## Deliverable 2

# Import and read Suspension coils file as table
sc_table <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Create a total summary dataframe
total_summary <- sc_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), Standard_Deviation_PSI=sd(PSI))
View(total_summary)

# Create a total summary grouped by lot number
lot_summary <- sc_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
View(lot_summary)

## Deliverable 3
# Create a t-test for all manufacturing lots
?t.test()

t.test((sc_table$PSI),mu=1500)

# Create a t-test for each manufacturing lot using subsets
# Lot 1
?subset()

lot1_sub <- subset(sc_table, Manufacturing_Lot=='Lot1', select = VehicleID:PSI)
View(lot1_sub)

t.test((lot1_sub$PSI),mu=1500)

# Lot 2
lot2_sub <- subset(sc_table, Manufacturing_Lot=='Lot2', select = VehicleID:PSI)
View(lot2_sub)

t.test((lot2_sub$PSI),mu=1500)

# Lot 3
lot3_sub <- subset(sc_table, Manufacturing_Lot=='Lot3', select = VehicleID:PSI)
View(lot3_sub)

t.test((lot3_sub$PSI),mu=1500)
