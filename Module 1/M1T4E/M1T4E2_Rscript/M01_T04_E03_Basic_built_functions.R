# Basic built in functions

# very important function for getting help
help() # explain help on the right
help("sum")

# get some examples example()
example("sum")

# create a vector of elements c()
v <- c(1,2,3)

# create sequence
seq(from=1, to=5, by=1)

# some other functions:
# rep() command
# View() comand
# ls() command
# print() command

# aggregations:
# sum(), mean(), max(), min(), sd(), var()

# load mtcars dataset
data(mtcars)
help(mtcars)

# structure of an object
str(mtcars)
head(mtcars)
tail(mtcars)

help(iris)
data(iris)
iris

# show how to remove object from workspace
rm(v)

ls() # list all workspace objects
rm(list = ls()) # remove all objects from environment - workspace

# system based functions
Sys.getenv() # get system environments

# get date and time
Sys.Date()
Sys.timezone()
Sys.time()
