# for loop

# loop over iterations and print number of iteration
for(it in 1:10){
  print(paste("iteration ", it, sep = ""))
}


# sum of numbers in a sequence
sequence <- c(1,2,3,4,5)
s <- 0 # initial sum

for(val in sequence){
  s <- s + val
  print(paste("value = ", val, sep = ""))
  print(paste("s = ", s, sep = ""))
  print("--------------------")
}


# for loop with conditional statement
# (count number of even numbers in a vector)
x <- c(1,3,2,4,5,10,22,21,100) # given numbers
count <- 0 # counter for even numbers

for(val in x){
  if(val %% 2 == 0){ # if number is divisible with 2
    count <- count + 1
  }
}

print(count)

