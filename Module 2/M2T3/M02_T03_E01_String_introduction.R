# Strings (introduction to strings)

s <- "word"
paste(s)

# check
is.character(s)

# different types of quotes
s1 <- "double quotes"
s2 <- 'single quotes'
s3 <- 'start single quote end double quote"
s4 <- "start double quote end single quote'
s5 <- "out double quotes, 'in single quotes'"
s6 <- 'out single quotes, "in double qiotes"'
#s7 <- "double quotes, "middle double quote"
#s8 <- "double quotes, 'middle single quote"

# empty string
s0 <- character(0)
typeof(s0)
character(5)

# combining numbers and strings in a vector
s <- c(1:3,sqrt(2),"abc")
class(s)
