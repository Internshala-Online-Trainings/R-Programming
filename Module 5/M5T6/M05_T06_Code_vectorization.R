# Code vectorization

# apply()
A <- array(data = 1:24, dim = c(4,3,2), dimnames = c(list(paste("row", 1:4, sep = ""), paste("col", 1:3, sep = ""), paste("mat", 1:2, sep = ""))))

apply(X = A, MARGIN = 1, FUN = sum)
apply(X = A, MARGIN = 2, FUN = mean)
apply(X = A, MARGIN = 3, FUN = max)


# lapply()

# max of elements (over a list)
v <- 1:10
log <- c(T, F, T, T, F)
num <- 1000
L <- list(v = v, log = log, num = num)

lapply(X = L, FUN = max)

# change strings to upper (strings in a vector)
names <- c("Mark", "John", "Jack", "Violet", "Katty")
lapply(names, toupper)

# extract elements froma  list
M1 <- matrix(data = 1:8, nrow = 2, byrow = T)
M2 <- matrix(data = 1:9, nrow = 3, byrow = T)

List <- list(M1 = M1, M2 = M2)

# extract 2nd column
help("[")
lapply(List, "[", , 2) # 2nd column vector of matrices

# extract 1st row
lapply(List, "[", 1, ) # 1st row vector of matrices

# extract element in 2nd row and 3rd column
lapply(List, "[", 2, 3) 


# sapply()

# sapply() ~ lapply() (otput returned)
M <- matrix(data = runif(100, min = 0, max = 10), nrow = 10)

L <- lapply(M, max) # returns a list
class(L)
L

v <- sapply(M, max) # returns a vector
class(v)
v

# lapply() with unlist()
unlist(L) # returns a vector


# replicate()

# replicate() for repetaing as rep()
replicate(n = 10, expr = "string")

# repeat function
replicate(n = 5, round(runif(n = 10, min = 0, max = 1))) # repetas function call n times

# repeat iterations in a simulation
digits <- 0:9 # digits

digits_generate <- function(v, n = 5){ # function that randomly generates digits and concatenates them
  digits <- sample(x = v, size = n, replace = T)
  return(paste(digits, collapse = ""))
  }

replicate(n = 100, digits_generate(v = digits, n = 15)) # repeat function call
          