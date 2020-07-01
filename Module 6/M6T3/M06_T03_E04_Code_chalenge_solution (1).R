# Code challenge
# Module 5: Data Visualisation in R
# Histogram

# Solution:

# Instructions:

# First run the code below to generate values ("x") from selected Gaussian distribution.
x <- rnorm(n = 1000, mean = 0, sd = 1) 

# Use R to execute the steps given below:
# 1) Visualize the distribution of variable "x" using histogram plot.
# 2) When drawing histogram consider the following:
#   - number of bins or breaks should be 60
#   - bin color should be "red"
#   - border color of bins should be "black"
#   - on x axis label write "x"
#   - on y axis label write "Frequency"
#   - for the title of the plot write "Gaussian distribution - histogram"
hist(x = x, 
     breaks = 60, 
     col = "red", 
     border = "black", 
     xlab = "x", 
     ylab = "Frequency", 
     main = "Gaussian distribution - histogram")
