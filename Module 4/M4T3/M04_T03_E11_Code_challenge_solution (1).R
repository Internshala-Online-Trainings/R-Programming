# Code challenge
# Module 4: Special R Data Structures & handling with R's input/output
# Date & time objects

# Solution:

# Use R to execute the steps given below:

# 1) Store date 13th of August in 2015 into date object date1 (hint for the date 2015-08-15).
date1 <- as.Date("2015-08-15")

# 2) Store date 21st of March in 2017 into date object date2.
date2 <- as.Date("2017-03-21")

# 3) Now calculate the difference in days between date2 and date1 object.
date2 - date1 # option 1
difftime(date2, date1, units = "days") # option 2
