# Code challenge
# Module 3: Multidimensional R Data Structures
# Working with Matrices

# Solution:

# Run this code to generate some random numbers:
rand_num <- runif(n = 100, min = 0, max = 1)

# 1) create matrix M using vector of random numbers, M must be square matrix with equal number of rows and columns!
nr_elements <- length(rand_num) # number of matrix elements
nr_rows <- sqrt(nr_elements) # number of rows for a square matrix
nr_cols <- nr_rows # equal number to rows
M <- matrix(data = rand_num, nrow = nr_rows, ncol = nr_cols, byrow = T) # create matrix

# 2) use adequate R function to count the number of rows and columns
dim(M)

# 3) now split matrix M into 4 smaller matrices M1, M2, M3, M4, when splitting all matrices must have unique elements from matrix M1
#    (when you split, do without using any matrix M element twice!!!)
M1 <- M[1:5,  1:5]
M2 <- M[1:5,  6:10]
M3 <- M[6:10, 1:5]
M4 <- M[6:10, 6:10]

# 4) calculate M1 + 2*M2 + M4^4 - M3
M1 + 2*M2 + M4^4 - M3
