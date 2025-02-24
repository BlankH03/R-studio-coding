# 1. Define the matrices A and B
A <- matrix(c(2, 0, 1, 3), ncol=2)
B <- matrix(c(5, 2, 4, -1), ncol=2)

# a) Find A + B
A_plus_B <- A + B
print("A + B:")
print(A_plus_B)

# b) Find A - B
A_minus_B <- A - B
print("A - B:")
print(A_minus_B)

# 2. Use diag() function to build a matrix of size 4 with given diagonal values
D <- diag(c(4, 1, 2, 3))
print("Diagonal matrix:")
print(D)

# 3. Generate the specified matrix using diag()
M <- diag(3, 5, 5)  
M[1, -1] <- 1  
M[-1, 1] <- 2  
print("Matrix:")
print(M)
