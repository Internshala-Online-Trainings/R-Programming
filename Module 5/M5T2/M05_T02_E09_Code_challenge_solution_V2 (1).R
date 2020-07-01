# Code challenge
# Module 5: Programming
# Logical statements

# Solution:

 
# The idea here:
# - we would like to write an R program that will enable user to write the user's name (using R input)
# - the program checks the length of the name (number of letters, white space is counted as 1 letter!)
# - the program should paste text:
#      - "short name" if the name has between 1 and 3 letters
#      - "medium name" if the name has between 4 and 11 letters
#      - "long name" if the name has over 12 letters

# the code - just fill the parts when instructed
#   line # 3 #: condition is missing for short names (hint: relational operator & a value)
#   line # 5 #: logical operator is missing between two conditions (hint: choose between AND or OR operators, but use R syntax!)
#   line # 7 #: syntax for logical statement is missing (hint: you must include "if" or "else if" or "else")


# ---------  R program --------- #
my.name <- readline(prompt="Enter name: ")# when run takes user's input 

if(nchar(my.name) <= 3){
  paste("short name")
} else if(nchar(my.name) > 3 & nchar(my.name) < 12){
  paste("medium name")
} else{
  paste("long name")
}