#Load (dplyr package)
library(dplyr)

#Import MechaCar_mpg.csv
mpg_data <- read.csv("MechaCar_mpg.csv")

#Linear regression lm() function
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data)

# P-value r-squared Summary
summary(mpg_lm)