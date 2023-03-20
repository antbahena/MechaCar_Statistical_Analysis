#Load (dplyr package)
library(dplyr)

#Import MechaCar_mpg.csv
mpg_data <- read.csv("MechaCar_mpg.csv")

#Linear regression lm() function
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data)

# P-value r-squared Summary
summary(mpg_lm)

#Import Suspension_Coil.csv
suspension_coil_df <- read.csv("Suspension_Coil.csv", header = TRUE)

# Mean, Median, Var, SD
total_summary <- suspension_coil_df %>%
  summarize(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI))

# Summary PSI
total_summary

# Lot Summary (Group_by)
lot_summary <- suspension_coil_df %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI))

#Show lot_summary
print(lot_summary)



