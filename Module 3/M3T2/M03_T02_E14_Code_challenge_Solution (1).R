# Code challenge
# Module 3: Multidimensional R Data Structures
# Working with Vectors

# Solution:

# 1) create a vector v1 with the values 1, 5, 10, 12, 20
v1 <- c(1, 5, 10, 12, 20)

# 2) create a vector v2 with the values 2, 2, 2, 2, 2 (if you know how to, you can use function rep() )
v2 <- rep(2,5)

# 3) now calculate the 3rd power of all elements of vector v1
v1^3

# 4) using vectors v1 and v2 execute the following vector arithmetics:
# v1 + 2*v2 + 20
v1 + 2*v2 + 20

# v1^4 / v2^2
v1^4 / v2^2

# (v1 %% 2) - sqrt(v2)
(v1 %% 2) - sqrt(v2)

# 5) multiply v1 and v2 as you would multiply matrices (vector-matrix style multiplication)
v1 %*% v2

# 6) create new vector v3, which has first three elements of vectors v1 and first three elements of vector v2
v3 <- c(v1[1:3], v2[1:3])

# 7) check number of elements of v3 using R length() function
length(v3)

