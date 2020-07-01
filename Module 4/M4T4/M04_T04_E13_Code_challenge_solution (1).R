# Code challenge
# Module 4: Special R Data Structures & handling with R's input/output
# Data frames

# Solution:

# Use R to execute the steps given below:

# 1) Create a data frame based on the given table. The name of the data frame should be "heroes".
heroes <-  data.frame(id = 1:3, 
                      name = c("Aragorn", "Legolas", "Gimli"),
                      race = c("human", "elf", "dwarf"),
                      weapon = c("sword", "bow", "axe"))

# 2) Extract column "name" from data frame "heroes".
heroes$name