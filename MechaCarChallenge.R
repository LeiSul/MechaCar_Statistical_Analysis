mechacar_table <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F) # import MechaCar dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table) #generate multiple linear regression model

summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = mechacar_table)) #generate summary statistics
