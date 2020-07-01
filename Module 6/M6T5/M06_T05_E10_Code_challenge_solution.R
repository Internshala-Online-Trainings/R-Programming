# Code challenge
# Module 6: Data Visualisation in R
# Graphical parameters

# Solution:

# Instructions:

# The code below creates a scatterplot similar as we have seen in the videos
# before. Your job is only to alter the par() function to get the desired output:
# 1) Increase relative text and symbol size to 3 (hint: cex parameter)
# 2) Change plot margins, margins should be 4 inches on all 4 sides
#    bottom, left, top, right (hint: use mar parameter)

par.default <- par() # save default parameters

par(cex = 2, mar = c(4,4,4,4)) # you need to change this part !!!!

plot(x = airquality$Wind,
     y = airquality$Ozone,
     col = "blue",
     main = "Ozone VS Wind",
     xlab = "Wind",
     ylab = "Ozone",
     pch = 16)

par(par.default) # reset graphical parameters
