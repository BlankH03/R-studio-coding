# Load
data <- read.csv("CigarettesSW.csv")

# Review
head(data)
str(data)

# 1 Basic basic R visualization
plot(data$income, data$packs,
     main = "Sales vs Income (Base R)",
     xlab = "Income",
     ylab = "Packs",
     col = "green",
     pch = 19)

# Load
library(lattice)

# 2 Lattice visualization Packs vs Income by Year
xyplot(packs ~ income | factor(year), data = data,
       layout = c(4, 2),
       main = "Packs vs Income by Year (Lattice)",
       xlab = "Income",
       ylab = "Packs",
       pch = 20,
       col = "darkgreen")

# Load
library(ggplot2)

# 3 ggplot2 scatter plot visualization 
ggplot(data, aes(x = income, y = packs)) +
  geom_point(color = "green") +
  geom_smooth(method = "lm", se = FALSE, color = "black") +
  labs(title = "Sales vs Income with Trend Line (ggplot2)",
       x = "Income",
       y = "Packs") +
  theme_minimal()

