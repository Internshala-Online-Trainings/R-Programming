# while loop

# sum of numbers

s <- 0 # initial sum
i <- 1 # initial value of i
while(i <= 10){
  s <- s + i 
  print("-----------------")
  print(paste("i = ", i, sep = ""))
  print(paste("s = ", s, sep = ""))
  i <- i + 1 
}


# print each number until condition is met

i <- 1 
while(i^2 <= 100){ # until square of a number is less or equal than 100
  print(i)
  i <- i + 1 
}


# infinity while loop with break statement
i <- 1
while(1 == 1){
  if(i > 20){
    break
  }
  print(i)
  i <- i + 1
}
