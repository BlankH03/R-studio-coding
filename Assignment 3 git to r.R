# data
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

ABC_Poll<- c(4, 62, 51, 21, 2, 14, 15)

CBS_Poll<- c(12, 75, 43, 19, 1, 21, 19)

# create data frame
poll_data <- data.frame(Name, ABC_Poll, CBS_Poll)

# display data frame
print(poll_data)
