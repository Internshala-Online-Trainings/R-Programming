# Vectors

# Vector hierarchy in R

v_logical <- c(T,F,T) # logical vector
v_logical
is.vector(v_logical)
is.atomic(v_logical)
typeof(v_logical)

v_integer <- c(1L,2L,5L) # integer vector
v_integer
is.vector(v_integer)
is.atomic(v_integer)
typeof(v_integer)

v_double <- c(1.3,2.1,5.0) # double vector
v_double
is.vector(v_double)
is.atomic(v_double)
typeof(v_double)

v_character <- c("a", "b", "c") # character vector
v_character
is.vector(v_character)
is.atomic(v_character)
typeof(v_character)

v_NULL <- NULL # NULL
v_NULL
typeof(v_NULL)

# Mix type vector (type coercion or conversion)
v_mix <- c(T, 1L, 1.25, "a")
v_mix # all elements converted to charatcers (based on hierarchy)
is.vector(v_mix)
typeof(v_mix)


# Vector properties

v <- c(1,2,3,4,5)

# vector length
length(v)

# type
typeof(v)
class(v)

# naming elements
names(v) # without names
vnames <- c("first", "second", "third", "fourth", "fifth") # element names
names(v) <- vnames # naming elements
v
names(v) # new names


# Create vector, access elements, modify vector

# create using c()
v <- c(1,3,5,8,0)

# create using operator :
1:100
10:-10

# using sequence seq()
v <- seq(from = 1, to = 100, by = 1)
v
v <- seq(from = 0, to = 1, by = 0.01)
v
v <- seq(from = 0, to = 10, length.out = 5)
v

# let's create a vector for accessing vector elements
v <- 1:10
names(v) <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
v

# access vector elements using integer vector index
v[c(1,5,10)]
v[1:5] # range index selection (slicing)
v[seq(from = 1, to = 9, by = 2)]
v[10:1] # reverse order selection
v[c(10,1,5,3)] # mix orfer selection

# access vector elements using logical vector index
v[c(T,F,F,F,F,F,F,F,F,F)] # access first element
v[c(F,F,F,F,F,F,F,T,T,T)] # access last three elements

# access elements using names
v[c("a","c","e")]
v[c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")]


# modify vector elements
v
v[2] <- 20 # alter second element
v
v[c(1,5,10)] <- c(0,0,0) # alter multiple elements
v

# modify elements with value 0
v
v[v==0] # filter with condition
v[v==0] <- 1000
v

# truncate vector to first 3 elements
v <- v[1:3]
v

# transpose vector change row to column vector or vice versa
v
t(v)

# delete or remove a vector
v <- NULL
v
rm(v)

# combine 2 different vectors
v1 <- 1:3
v2 <- 100:105
v1
v2
v3 <- c(v1,v2) # combine vectors
v3

# repet elements of a vector
rep(x = v1, times = 2)
rep(x = v1, times = 100)
rep(10,10)


# Vector arithmetics

# vector - scalar (scalar with each vector element)
v <- 1:5
a <- 10
v
a

# Addition +
v + a
# Subtraction -
v - a
# Multiplication *
v * a
# Division /
v / a
# Exponent ^  **
v^a
# Modulus (Remainder from division) %%
v %% 2
# Integer Division %/%
v %/% 2
# Other functions on vector elements
sqrt(v)
log(v)
sum(v)


# vector - vector (vector element to element | member-by-member)
v1 <- seq(10,30,10)
v2 <- rep(3,3)

# Addition +
v1 + v2
# Subtraction -
v1 - v2
# Multiplication *
v1 * v2
# Division /
v1 / v2
# Exponent ^  **
v1^v2
# Modulus (Remainder from division) %%
v1 %% v2
# Integer Division %/%
v1 %/% v2

# Vector-matrix style multiplication
v1
v2
10*3 + 20*3 + 30*3
t(v1) %*% v2
v1 %*% v2
v1 %*% t(v2)


# Recycling rule
v1 <- c(1,1,1)
v2 <- 1:6
v1
v2
v1 + v2


# Set operations

v1 <- c("a", "b", "c")
v2 <- c("c", "d", "e")
v1
v2

union(v1,v2) # union of both sets (all unique elements)

intersect(v1,v2) # intersection of both sets (elements in both sets)

setdiff(v1,v2) # difference of elements (elements in v1 and not in v2)

identical(v1, v2) # check if vectors are identical
identical(c(1,2,3), c(1,2,3))
