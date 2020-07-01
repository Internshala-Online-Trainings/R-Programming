# Arrays

# create an aray
A <- array(data = 1:8, dim = c(2,2,2)) # array function
A

# using vectors
v1 <- c(2,9,6)
v2 <- c(10,15,13,16,11,12)
A <- array(c(v1,v2), dim = c(3,3,2))
A

# or using 2 matrices
M1 <- matrix(data = 1:4, nrow = 2, byrow = T)
M2 <- matrix(data = 5:8, nrow = 2, byrow = T)
M1
M2
A <- array(data = c(M1, M2), dim = c(2,2,2))
A

# array properties
row.names <- c("r1", "r2")
col.names <- c("c1", "c2")
matrix.names <- c("M1", "M2")
A <- array(data = 1:8, dim = c(2,2,2), dimnames = list(row.names, col.names, matrix.names)) # array with element names
A
attributes(A) # get array attributes


# access elements
row.names <- c("r1", "r2", "r3")
col.names <- c("c1", "c2", "c3", "c4")
matrix.names <- c("M1", "M2")
A <- array(data = 1:24, dim = c(3,4,2), dimnames = list(row.names, col.names, matrix.names)) # array with element names
A

A[2,3,2] # extract one element with index

A[,,1] # extract multiple elements (matrix M1)

A["r1", "c2", "M1"] # extract element using element names

A[,,"M1"] # extract multiple elements using names

A[1:2,3:4,1:2] # slicing over dimensions


A[1,1,1] <- 10 # modifying array element
A[1:2, 1:2, 2] <- matrix(data = seq(from=100, to=400, by = 100), nrow = 2, byrow = T)v# modifying multiple elments
A

# Calculations on array using apply
apply(X = A, MARGIN = 1, FUN = sum) # calculates sum over rows and all dimensions
apply(X = A, MARGIN = 2, FUN = sum) # calculates sum over columns and all dimensions


# more than 3 dimensionals arrays
A4 <- array(data = 1:16, dim = c(2,2,2,2)) # 4-dimensional array
A4

A5 <- array(data = 1:32, dim = c(2,2,2,2,2)) # 5-dimensional array
A5

