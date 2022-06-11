library(tidyverse)
library(dplyr)

#Deliverable 1:
mechacar_table <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F) # import MechaCar dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table) #generate multiple linear regression model

summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = mechacar_table)) #generate summary statistics


#Deliverable 2:
suspension_coil_table <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F) #import suspension coil data

total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),
                                                          Std_Dev=sd(PSI)) 

lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), 
                                                          Variance=var(PSI), Std_Dev=sd(PSI), .groups = 'keep')


#Deliverable 3:
t.test(suspension_coil_table$PSI,mu=1500)

Lot1 <- subset(suspension_coil_table, Manufacturing_Lot=='Lot1')
Lot2 <- subset(suspension_coil_table, Manufacturing_Lot=='Lot2')
Lot3 <- subset(suspension_coil_table, Manufacturing_Lot=='Lot3')
t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)

