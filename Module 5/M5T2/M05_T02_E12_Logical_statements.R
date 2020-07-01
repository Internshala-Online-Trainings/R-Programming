# Logical statements

# if statements

# if statement

x <- 3
y <- 14

if(x < y){
  print("x is less than y")
}


# if-else statement

x <- 3
y <- 14

if(x > y){
  print("x is greater than y")
} else{
  print("x is less or equal to y")
}


# if-else if-else statement

x <- 14
y <- 14

if(x > y){
  print("x is greater than y")
} else if (x < y){
  print("x is less than y")
} else{
  print("x is equal to y")
}


# relational operators

# scalar
x <- 3

x == 4
x > 0 
x < 5
x <= 3
x >= 10
x %in% c(1,2,3,4,5)

# vectors
X <- c(F,T,0,10)
Y <- c(T,F,F,T)

X == Y # element-wise comparison
X > Y
X < Y
X >= Y
X <= Y
X != Y
X %in% Y


# Logical operators 

X | Y
X || Y
X & Y
X && Y
!X

# logical operators in if statement (flip coin twice)
c1 <- "H"
c2 <- "H"

if(c1 == "H" & c2 == "H"){
  paste("You win 10$")
} else if((c1 == "H" & c2 == "T") | (c1 == "T" & c2 == "H")){
  paste("You win 2$")
} else{
  paste("You lose all the money")
}

