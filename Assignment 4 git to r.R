# Create dataset
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1) 
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1) 

# Create data frame
hospital_data <- data.frame(Freq, bloodp, First, Second, FinalDecision)

# Boxplot blood pressure  (First (MD's ratings))
boxplot(bloodp ~ First, data = hospital_data,
        xlab = "First Assessment (1=bad, 0=good)",
        ylab = "Blood Pressure",
        main = "Boxplot of Blood Pressure by First Assessment",
        col = c("blue", "red"))

# Histogram for blood pressure
hist(hospital_data$bloodp,
     main = "Histogram of Blood Pressure",
     xlab = "Blood Pressure",
     col = "red",
     breaks = 6)

# Show the data summary for discussion
summary(hospital_data)
