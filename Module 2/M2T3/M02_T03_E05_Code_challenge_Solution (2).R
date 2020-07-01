# Code challenge
# Module 2: Basic R Data Structures
# Working with strings

# Solution:

# 1) create an object s1 by assigning a string "Hello"
s1 <- "Hello"

# 2) create an object s2 by assigning a string "World!"
s2 <- "World!"

# 4) use paste() function to create object s by pasting together 
#    objects s1 and s2 (in given order), for a separator between 
#    strings use white space sep=" "
s <- paste(s1, s2, sep = " ")

# 5) check type of object s, use typeof()
typeof(s)
