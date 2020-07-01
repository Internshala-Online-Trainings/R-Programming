# Strings - string manipulation

# print strings
print("string")

# concatenate strings "a" + "b" = "ab"
paste("a", "b", sep = "")

# paste objects of different length
paste("i", 1:10, sep =".")
paste(c("i","j", "k"), 1:10, sep =".")

# paste with collapsing
paste(c("i","j", "k"), 1:3, sep = "", collapse = "")

# paste withour collapsing
paste(c("i","j", "k"), 1:3, sep = "")

# paste0() shorter version of paste(..., sep ="")
paste0("Hello", "world", ",", "I", "use", "R")
paste("Hello", "world", ",", "I", "use", "R", sep =" ")

# concatenate strings with cat()
cat("Hello", "world", "!")

# it prints withoute "" quotes !!!
cat("Hello", "world", "!", sep = "/")

# counting number of characters nchar()
nchar("Hello world")

# load US states names from data frame regarding crime rate
df <- USArrests
head(df)
rownames(df)
states <- rownames(df) 

# convert all states names to upper case
states_upper <- toupper(states)

# convert all names to lower
states_lower <- tolower(states)

# or select which to apply with function casefol
casefold(x = states, upper = T)
casefold(x = states, upper = F)

# character translation
chartr(old = "o", new = "0", x = "Hello World")

# sorting strings 
sort(states, decreasing = F) #ascending order
sort(states, decreasing = T) #descending order

# extracting parts of string
# substring first 3 letters from state name Alabama
substr(x = "Alabama", start = 1, stop = 3)
