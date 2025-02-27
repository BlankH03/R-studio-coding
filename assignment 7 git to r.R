# Module 7 Assignment
library(ggplot2)  

# Step 1: Load a dataset
data("diamonds")  
head(diamonds) 

# Step 2: Check if generic function can be assigned to diamonds
methods(class = "data.frame") 

# 'diamonds' is a data frame, it supports generic functions like print(), summary(), plot()

# Step 3: Explore if S3 and S4 can be assigned to diamonds

# S3 system
isS3 <- is.object(diamonds) && !isS4(diamonds)
print(paste("Is diamonds dataset using S3? ", isS3))

# S4 system
isS4 <- isS4(diamonds)
print(paste("Is diamonds dataset using S4? ", isS4))

# Step 4: Discussion Questions
# 1. How to determine the OO system (S3 vs. S4) an object is associated with?
#    Use isS3() and isS4() functions to check.

# 2. How to determine the base type of an object?
typeof(diamonds)  
class(diamonds)   

# 3. What is a generic function?
# A generic function determines which method to call based on the object class.
# 'summary' is a generic function that works for different object types.

# 4. Main differences between S3 and S4
# S3 is simpler, more flexible, and relies on function overloading.
# S4 is more structured, requiring explicit definition of classes and methods.

# Step 5: Create S3 and S4 Examples and push to GitHub

# S3 Example
S3e <- function(name, age) {
  structure(list(name = name, age = age), class = "S3e")
}

print.S3e <- function(obj) {
  cat("Person Name:", obj$name, "\nAge:", obj$age, "\n")
}

e1 <- S3e("Holden",21)
print(e1)

# S4 Example
setClass("S4e",
         slots = list(name = "character", age = "numeric"))

setMethod("show", "S4e",
          function(object) {
            cat("Person Name:", object@name, "\nAge:", object@age, "\n")
          })

e2 <- new("S4e", name = "Abby", age = 22)
show(e2)


