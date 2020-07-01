# Code challenge
# Module 3: Multidimensional R Data Structures
# Working with Arrays

# Solution:

# Use R to execute the steps given below:
# 1) create 3 different vectors (v1, v2, v3), you can choose the values and dimensions of each vector,
#    (the only condition is that all three vectors have the same dimension)
v1 <- 1:16
v2 <- 17:32
v3 <- 33:48

# 2) from each vector (v1, v2, v3) create a matrix (M1, M2, M3)
#	 (the only coddition is that all three matrices have the same dimension)
M1 <- matrix(data = v1, nrow = 4, ncol = 4, byrow = T)
M2 <- matrix(data = v2, nrow = 4, ncol = 4, byrow = T)
M3 <- matrix(data = v3, nrow = 4, ncol = 4, byrow = T)


# 3) now create an array A by merging all three matrices (M1, M2, M3)
#    (matrices are merged together on thirs dimension!!!)
A <- array(data = c(M1, M2, M3), dim = c(4, 4, 3))

# 4) use apply() and sum() to calculate total sum of rows and columns of created array A
apply(A, MARGIN = 1, FUN = sum)
apply(A, MARGIN = 2, FUN = sum)

