# Code challenge
# Module 5: Data Visualisation in R
# Line chart

# Solution:

# We would like to create a simple line chart showing how f(x) is depended of x in a square root function.

# Use R to execute the steps given below:
# 1) Generate vector "x" as a sequence between 0 and 100 with a step size 0.25 (hint use seq() function).
x <- seq(from = 0, to = 100, by = .25)

# 2) Calculate vector "y" as a square root of "x" (hint: use function sqrt())
y <- sqrt(x)

# 3) Now plot the square root function as a line chart. Inside plot() consider the following:
#   - on x axis use "x" vector
#   - on y axis use "y" vector
#   - use line not points for drawing
#   - line width should be 2
#   - line color should be "blue"
#   - on x axis label write "x"
#   - on y axis label write "f(x)"
#   - for the title of the plot write "Square root function"
plot(x = x, 
     y = y, 
     type = "l", 
     lwd = 2, 
     col = "blue", 
     xlab = "x", 
     ylab = "f(x)", 
     main = "Square root function")

