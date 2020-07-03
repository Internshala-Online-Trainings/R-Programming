# Code challenge
# Module 4: Special R Data Structures & handling with R's input/output
# Import data from the web

# Solution:

# 1) On the url link "www.my_data.com" you can access a webpage that contains tabular data about past weather conditions.
# 2) If you take a preview of a webpage with your browser, you are able to notice that
#    table contains header (first row of a table), and "," (comma) is used as a separator for columns.  

# 3) Write R code that would import tabular data from provided url and store the 
#    data into new object called "weather" inside R environment.
#    (You do not have to run your code!)
weather <- read.table(file = "www.my_data.com", header = T, sep = ",")