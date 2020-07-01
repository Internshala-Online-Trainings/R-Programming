# Code challenge
# Module 5: Programming
# for loops

# Solution:


# The idea here:
# - we would like to write a R program that will simulate a game of throwing a dice
# - in every iteration the gambler throws the dice
# - the game is played so long until the gambler throws number 6 for the first time
# - after gambler throws 6 for the first time, the game stops
# - dice throwing is already written, you only need to add a stopping criteria,
# - and a print statement that will tell us, how many throws were needed to complete a game

# the code - just fill the parts when instructed
#   line # 6 #: finish logical statement syntax - loop should break when number 6 lands! 
#   line # 7 #: write the syntax for stopping a loop or breaking it!


# ---------  R program --------- #
dice_numbers <- 1:6				   					                # numbers 1,2,3,4,5,6 for a normal dice
i <- 1							   					                      # iteration index (number of throws), we start with 1st throw

while(1 == 1){					   					                  # infinity while loop, breaking condition added inside a loop!
  number_landed <- sample(x = dice_numbers, size = 1) # number landed on a dice
  if(number_landed == 6){						                  # logical statement - tests if number 6 landed
      break											                      # stop loop statement when number 6 lands
  }
  i <- i + 1										                      # update iteration index
}											    

print(paste0("Number of dice throws: ", i))			      # prints the final number of dice throws (number of iterations)   
      