# next & break statement


# break statement

# break when sum reaches 100
n_max <- 100 # max number in a sequence
s <- 0 # initial sum

for(val in 1:n_max){
  s <- s + val
  print(paste("value = ", val, sep = ""))
  print(paste("s = ", s, sep = ""))
  print("--------------------")
  
  if(s >= 100){
    break
  }
}


# loop over iterations and print number of iteration (break statement)
for(it in 1:100){
  print(paste("iteration ", it, sep = ""))
  if(!it %% 93){
    break
  }
}


# next statement

# print only odd number
n=50

for (k in 1:n){
  if (!k %% 2)
    next
  print(k)
}

