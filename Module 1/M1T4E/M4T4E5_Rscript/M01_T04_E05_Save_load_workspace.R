# Save and load workspace

# load iris and mtcars
data(iris, mtcars)
iris
mtcars

# create 2 additional variables
a <- 10 
v <- 1:5

# save objects in data with save() command ...
save(list = "a", file = "a.RData")
save(list = "v", file = "v.RData")
save(list = "iris", file = "iris.RData")
save(list = "mtcars", file = "mtcars.RData")

# clear workspace
rm(a)
rm(v)
rm(iris)
rm(mtcars)

# load each object load()
load(file = "a.RData")
load(file = "v.RData")
load(file = "iris.RData")
load(file = "mtcars.RData")



# save complete workspace
ls()
objects <- ls()
save(list = "objects", file = "workspace.RData")

# remove and load complete workspace
rm(list = ls())
load(file = "workspace.RData")
