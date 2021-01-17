# load packages
library(dplyr)
library(tidyverse)

# Create df with mpg data
df <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Perform linear regression with all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df)

# Calculate summary statistics for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df))
