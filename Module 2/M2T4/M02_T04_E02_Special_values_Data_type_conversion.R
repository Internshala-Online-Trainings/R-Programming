# Special R values and data type conversion

# Missing data NA - Not Available
a <- NA
b <- 5
a + b 

# caution when dealing with NULL values and mathematical operations !!!!
# you can avoid getting NA with results within some functions

# test for missing values
is.na(a)
is.na(b)

# in a vector
v <- c(NA,1,2,3,NA)
is.na(v)

# NaN - Not a Number
# Division zero with zero
a <- 0/0
is.nan(a)

# Infinity inf and minus infinity -inf
1/0
is.infinite(1/0)
-1/0
is.infinite(-1/0)
is.finite(-1/0)


# Data types conversion

# from numeric to logical and vice versa
as.logical(0)
as.logical(1)
as.logical(-1)
as.logical(10)

as.numeric(TRUE)
as.numeric(FALSE)

# from string to numeric and vice versa
num <- 100
str <- "100"

num_to_str <- as.character(num)
class(num_to_str)
str_to_num <- as.numeric(str)
class(str_to_num)

# combining multiple conversions string-numeric-string
num_to_str_to_num <- as.numeric(as.character(num))
