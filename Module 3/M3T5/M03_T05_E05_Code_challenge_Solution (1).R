# Code challenge
# Module 3: Multidimensional R Data Structures
# Working with Lists

# Solution:

# 1) Create 3 different object types, one is vector data type other two types are of your choosing.
v <- 1:10
l <- TRUE
i <- 5L

# 2) Now create a list L and store all three objects you have already created.
#    (name of objects inside a list should be the same as original object names)
L <- list(v = v, l = l, i = i)

# 3) Now extract one vector from a list L:
#    a) extract it as a member (to get a vector type)
#    a) extract it as a list (sub-list of a list L)
L[1]
L[[1]]

# 4) Store both extractions into different objects, and check their types with typeof()
v.list <- L[1]
v.vec <- L[[1]]
typeof(v.list)
typeof(v.vec)

