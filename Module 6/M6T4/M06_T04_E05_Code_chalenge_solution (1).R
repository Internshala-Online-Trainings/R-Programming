# Code challenge
# Module 5: Data Visualisation in R
# Bar chart

# Solution:


# Instructions:

# For this exercise we will use the built in "mtcars" dataset. We would like to show how
# the number of cylinders in a car is related to the engine type. 
# ("cyl" - number of cylinders, "vs" - engine type)

# First run the code below, and prepare data for drawing a bar chart.
data <- mtcars[, c("cyl", "vs")]                  # use only relevant columns
data[which(data["vs"] == 0), "vs"] <- "V-shapped" # recode vs variable value 0
data[which(data["vs"] == 1), "vs"] <- "straight"  # recode vs variable value 1
counts <- table(data$cyl, data$vs)                # create count for the bar chart

# Use R to execute the steps given below:
# 1) Create a bar chart using "counts" object.
# 2) When drawing bar chart consider the following:
#   - we would like to create a grouped bar chart
#   - on x axis label write "Engine type"
#   - on y axis label write "Number of cylinders"
#   - for the title of the plot write "Engine type VS Cylinders - bar chart"
barplot(counts, 
        main = "Engine type VS Cylinders - bar chart",
        xlab = "Engine type", 
        ylab = "Number of cylinders",
        beside = TRUE)
