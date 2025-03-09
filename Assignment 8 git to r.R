# Step 1:
# Load libraries
library(plyr)
library(data.table)

# Read file 
file_name <- "Assignment 8 Dataset.txt"  
students <- read.table(file_name, header = TRUE, sep = ",", stringsAsFactors = FALSE)

# Mean of 'Grade' by 'Sex'
students_gendered_mean <- ddply(students, "Sex", transform, Grade.Average = mean(Grade))

# Output
write.table(students_gendered_mean, "Students_Gendered_Mean.txt", row.names = FALSE, sep=",")

# Step 2: Filter letter 'i'
i_students <- subset(students, grepl("i", students$Name, ignore.case = TRUE))

# Step 3: filtered dataset
write.csv(i_students, "Filtered_Students_Final.csv", row.names = FALSE)
write.table(i_students, "Filtered_Students_Subset", sep="," )

