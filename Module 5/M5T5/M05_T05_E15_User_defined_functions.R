# User defined functions (UDF)

# Write your first function
power <- function(x,a){
  y <- x^a
  return(y)
}

power(2,2)
power(4,5)

# function for concatenating two strings
my_concat <- function(s1, s2){
  print(paste(s1, s2))
}

my_concat("Hello", "world")


# Default function arguments
power <- function(x,a=2){
  y <- x^a
  return(y)
}

power(2)
power(2,5)


# Return single or multiple arguments

# multiple output
my_stats <- function(vec){
  mean_val <- mean(vec)
  sd_val <- sd(vec)
  median_val <- median(vec)
  sum_val <- sum(vec)
  
  output <- list(mean = mean_val, 
                 sd = sd_val,
                 median = median_val,
                 sum = sum_val)
  return(output)
}

v <- 1:10
my_stats(v)


# Ellipses "..." - additional func parameters

my_sum <- function(vec, ...){
  s <- sum(vec, ...)
  return(s)
}

v <- c(1,2,-4,5,NA)
v
my_sum(v)
my_sum(v, na.rm = T) # call argument of sum() function


# Anonymous function

# anonymous function for extracting the max value
function(x){max(x)}

M <- matrix(data = 1:100, nrow = 10, byrow = T)
rownames(M) <- paste("row", 1:nrow(M), sep = "")
colnames(M) <- paste("col", 1:nrow(M), sep = "")

apply(X = M, MARGIN = 1, FUN = function(x){max(x)})
apply(X = M, MARGIN = 2, FUN = function(x){max(x)})


# Recursive functions (Recursion)

# Fibonaci sequence (no recursion)
fibonacci_seq <- function(n){
  f_sequence <- NULL
  for(i in 1:n){
    if(i <= 2){
      f <- 1 # first two elements are 1
    } else{
      f <- f_sequence[i-2] + f_sequence[i-1] #for all other cases fibonacci number is sum of previous two numbers
    }
    f_sequence <- c(f_sequence, f)
  }
  return(f_sequence)
  print(f)
}

fibonacci_seq(1)
fibonacci_seq(2)
fibonacci_seq(3)
fibonacci_seq(5)
fibonacci_seq(10)
fibonacci_seq(25)


# Fibonaci sequence (recursion)
fib_r <- function(n){
  if(n <= 2){
      return(1)
  }
  return(fib_r(n-1) + fib_r(n-2))
}

for(i in 1:10){print(fib_r(i))}


# call function from a different script

# create new script - my_functions.R
# save functions into script
# call functions from another script

rm(list = ls())

# source script
source("./my_functions.R")

power(2,5)
fibonacci_seq(10)
my_stats(runif(n = 10, min = -5, max = 5))
