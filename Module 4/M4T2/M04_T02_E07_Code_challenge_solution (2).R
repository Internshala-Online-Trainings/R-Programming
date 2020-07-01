# Code challenge
# Module 4: Special R Data Structures & handling with R's input/output
# Categorical variables

# Solution:

# First run the code below to create a vector of colors!
colors.intial <- c(rep("red", 3), rep("green", 5), rep("blue", 2)) # create vector of colors
colors.intial <- colors.intial[sample(x = 1:length(colors.intial), size = 10, replace = F)] # reshuffle colors
colors <- as.factor(colors.intial) # convert to factor

# Use R to execute the steps given below:
# 1) Check length of factor object!
length(colors)

# 2) Extract factor levels.
levels(colors)

# 3) Change the order of factor variable, new order: "red", "green", "blue"
#    (hint: recreate factor variable with factor() using levels attribute)
colors <- factor(x = colors, levels = c("red", "green", "blue"))
