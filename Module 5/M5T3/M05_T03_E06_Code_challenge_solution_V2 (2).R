# Code challenge
# Module 5: Programming
# for loops

# Solution:


# The idea here:
# - we would like to write a R program that will calculate the sum of 10 random numbers (that R generates)
# - the for loop should iterate over each random number
# - in every loop iteration, sum of numbers shoud be updated

# the code - just fill the parts when instructed
#   line # 5 #: index is missing for a number extracted from vector of random numbers (inside brackets "[ ]")
#   line # 6 #: extracted number is missing in a sum (right after "s +")


# ---------  R program --------- #
random_numbers <- runif(n = 10, min = 0, max = 1) # generate a vector of random numbers (between 0 and 1, 10 numbers)
s <- 0											  # initial sum before the loop s = 0

for(i in 1:length(random_numbers)){               # loops over vector of numbers
  number <- random_numbers[i]					  # current random number extracted from a vector
  s <- s + number								  # adds value of current random number to sum s
}

print(s)										  # prints the final sum of random numbers
# ---------  R program --------- #

