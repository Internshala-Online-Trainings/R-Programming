# Code challenge
# Module 6: Data Visualisation in R
# Multi-plots

# Solution:

# Instructions:

# The code below creates 4 different plots similar as we have seen in the videos
# before. The plots are drawn in a 4 rows by 1 column grid.
# Your job is only to alter the par() function to draw
# plots in a 2 rows and 2 columns grid (2 plots in the first row
# and 2 plots in the second row)

par.default <- par() # save default parameters

par(mfrow = c(2,2)) # you need to change this part !!!!

plot(airquality$Wind, airquality$Ozone, xlab = "", ylab = "", main = "Fig1")
plot(airquality$Ozone, airquality$Wind, xlab = "", ylab = "", main = "Fig2")
hist(airquality$Wind, xlab = "", ylab = "", main = "Fig3")
hist(airquality$Ozone, xlab = "", ylab = "", main = "Fig4")

par(par.default) # reset graphical parameters
