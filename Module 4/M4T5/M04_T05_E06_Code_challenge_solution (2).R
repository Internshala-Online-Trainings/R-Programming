# Code challenge
# Module 4: Special R Data Structures & handling with R's input/output
# Import flat files
# Solution:

# Use R to execute the steps given below:

# 5) Write R code that would import text file "measurements.txt" and store the 
#    data into new object called "measurements" inside R environment.
#    (You do not have to run your code!)
measurements <- read.table(file = "measurements.txt", header = T, sep = "\t")