# Factors

# create factor variable (gender)
gender <- factor(x = c("male", "female", "female"))

# check new variable
gender
str(gender)
class(gender)
typeof(gender)

# create with ordering
gender <- factor(x = c("male", "female", "female"), ordered = T)
is.ordered(gender)

# check levels
levels(gender) # order of levels based on variable (string alphabetic order)

# we can define our own levels (custom levels order)
gender <- factor(x = c("male", "female", "female"), levels = c("male", "female"), ordered = F)
gender
levels(gender)

# factor properties
levels(gender)
is.factor(gender)
is.ordered(gender)

# create other object to factor
strings <- c("a", "b", "a", "c")
f_strings <- factor(strings)
f_strings

numbers <- c(1, 2, 0.5, 100, 4)
f_numbers <- factor(numbers)
f_numbers


# Lets create factor gender with more values
gender <- c(rep("male", 25), rep("female", 30))
shuffled_index <- sample(1:length(gender), size = length(gender), replace = F) # random shuffled element index
gender <- gender[shuffled_index] # shuffled elements
gender <- factor(x = gender, levels = c("female", "male"))

# access elements with index
gender[50]

# access elements using logicals vector
gender[c(rep(F,49), T, rep(F, 5))]

# factor object slicing
gender[20:35]


# Alter factor element
gender[50] <- "male"

# Add elements
gender[56:60] <- "female"

# Remove elements 
gender <- gender[1:55] # remove previously added elements

# Add element which is not in factor levels (gender "unknown")
gender[56] <- "unknown"

# first add elment to factor levels
levels(gender) <- c(levels(gender), "unknown")

# give one more try
gender[56] <- "unknown"

# check levels
levels(gender)

# remove "unknown" element
gender <- gender[1:55]

# drop levels
gender <- droplevels(gender)
levels(gender)
