# Code challenge
# Module 4: Special R Data Structures & handling with R's input/output
# Export flat files

# Solution:

# Use R to execute the steps given below:

# 5) Write R code that would export R object "scores" into a .csv file "scores.csv" 
#    into selected folder.
#    (You do not have to run your code!)
write.table(x = scores,
            file = "./data_export/scores.csv", 
            col.names = T, 
            row.names = T, 
            sep = ";")