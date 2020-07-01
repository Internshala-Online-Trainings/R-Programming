# Code challenge
# Module 5: Programming
# apply()

# Solution:

# First run the code below to create a matrix ("gauss") containing 3 vectors generated from 3 different Gaussian distributions!
gauss1 <- rnorm(n = 1000, mean = 0, sd = 1)   # vector 1 mean = 0, standard deviation = 1
gauss2 <- rnorm(n = 1000, mean = 10, sd = 3)  # vector 2 mean = 10, standard deviation = 3
gauss3 <- rnorm(n = 1000, mean = 50, sd = 10) # vector 3 mean = 50, standard deviation = 10
gauss <- cbind(gauss1, gauss2, gauss3) # matrix


# Use R to execute the steps given below:
# 1) use apply() function on a matrix "gauss" to calculate the mean 
#    of each vector-columns (hint: for mean we use "mean" function, aggregate across columns!)
apply(X = gauss, MARGIN = 2, FUN = mean)

# 2) use apply() function on a matrix "gauss" to calculate the standard deviation 
#    of each vector-column (hint: for stan. deviation we use "sd" function, aggregate across columns!)
apply(X = gauss, MARGIN = 2, FUN = sd)
