# Code challenge
# Module 4: Special R Data Structures & handling with R's input/output
# Dealing with data base

# Solution:

 
# 1) In your R session you have already made a connection to 
#    a SQLite data base using the code below:
library(RSQLite)
con <- RSQLite::dbConnect(RSQLite::SQLite(), dbname = "database.db")

# 2) Now you have to write R code to execute two additional tasks on a 
#    a connected data base:
#    - write a code that will list all table names of a data base into your R console
#    - then write a code that will close the connection to a given data base
#    (You do not have to run your code!)

dbListTables(con) # list all table names
RSQLite::dbDisconnect(con) # close connection