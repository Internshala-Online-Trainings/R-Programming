# Matrices

# Create matrix

# using matrix()
M <- matrix(data = 1:9, nrow = 3, ncol = 3)
M

M <- matrix(data = 1:9, nrow = 3, ncol = 3, byrow = T)
M

matrix(data = 1:6, nrow = 2, ncol = 3)

# by merging multiple vectors
v1 <- c(1,2,3)
v2 <- c(4,5,6)
v3 <- c(7,8,9)

rbind(v1,v2,v3)
cbind(v1,v2,v3)

# by altering vector dimension
v <- 1:9
v
dim(v) <- c(3,3)
v


# 3.2.2 Matrix properties

# rownames & colnames
M <- matrix(1:12, nrow = 4, dimnames = list(c("r1","r2","r3", "r4"), c("c1","c2","c3")))
M
rownames(M)
colnames(M)

# matrix dimension
dim(M)

# get all attributes
attributes(M)

# change rownames & colnames
rownames(M) <- paste("row ", 1:4, sep = "")
colnames(M) <- paste("col ", 1:3, sep = "")
attributes(M)
M

# class and type
class(M)
typeof(M)

# check for matrix
is.matrix(M)


# Access matrix elements

# integer vector as index
M
M[2,3]
M[c(1,2),3]

M[c(2,3),] # selected rows and all columns
M[,c(2,3)] # selected columns and all rows

# logical vector as index
M[c(T,T,F,F), c(T,T,T)]

# character vector as index
M[c("row 2", "row 3"), c("col 1", "col 2")]

# range of indexes (slicing rows and columns)
M[1:3,2:3]


# Access matrix elements

# modify 1 element
M
M[1,1] <- 10
M

# modify more than one element
M[2:3,3] <- 20 
M

# modify elements based on condition
M[M>10] <- 0
M

# transpose a matrix
t(M)

# add row to matrix
M
rbind(M, c(0,0,0))

# add column to matrix
cbind(M, c(0,0,0, 0))

# alter matrix dimensions
dim(M)
dim(M) <- c(3,4) # names are dropped
M

# merge 2 matrices
M1 <- matrix(data = rep(0,4), nrow = 2, ncol = 2)
M2 <- matrix(data = rep(1,4), nrow = 2, ncol = 2)
M1
M2

rbind(M1,M2)
cbind(M1,M2)


# Matrix arithmetics

# matrix  - scalar (scalar with each vector element)
M
a <- 10

# Addition +
M + a
# Subtraction -
M - a
# Multiplication *
M * a
# Division /
M / a
# Exponent ^  **
M^a
# Modulus (Remainder from division) %%
M %% 2
# Integer Division %/%
M %/% 2
# Other functions on matrix elements
sqrt(M)
log(M)
sum(M)

# matrix - vector (matrix element to element | member-by-member)
M1 <- matrix(data = 1:9, nrow = 3, byrow = T)
M2 <- matrix(data = rep(3,9), nrow = 3)

# Addition +
M1 + M2
# Subtraction -
M1 - M2
# Multiplication *
M1 * M2
# Division /
M1 / M2
# Exponent ^  **
M1^M2
# Modulus (Remainder from division) %%
M1 %% M2
# Integer Division %/%
M1 %/% M2

# matrix-matrix style multiplication
M1
M2
t(M1) %*% M2
M1 %*% M2


# matrix algebra (matrix based functions)
M <- matrix(data = c(1,5,3,2,4,7,4,6,2), nrow = 3, byrow = T)

# get diagonal elements
diag(M)

# get matrix determinant
det(M)

# get inverse of a matrix M^(-1)
solve(M)

# get eigen values
eigen(M)

# calculate sum over rows or columns
M
rowSums(M)
colSums(M)

# Lets solve simple matrix equation
# A * X = B
A <- matrix(data = c(1,2,4,5), nrow = 2, byrow = T)
B <- matrix(data = c(5,24,17,66), nrow = 2, byrow = T)
# X = A^(-1) * B
X <- solve(A) %*% B
X
# test
A %*% X # should get B


# summarizing a matrix (apply)
M

# sum of rows
apply(X = M, MARGIN = 1, FUN = sum)

# sum of columns
apply(X = M, MARGIN = 2, FUN = sum)

# create matrix of random numbers
rnorm(n = 1000, mean = 0, sd = 2)
A <- matrix(data = rnorm(n = 1000, mean = 0, sd = 2), nrow = 100, ncol = 10)

# get mean over columns
apply(A, 2, mean)

# get mean over rows
apply(A, 1, mean)

# calculate standard deviation for each column
apply(A, 2, sd)
