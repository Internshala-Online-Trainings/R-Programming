# nested loops

# iterate over a matrix and print each element
M <- matrix(data = 1:25, nrow = 5, byrow = T)

for(i in 1:dim(M)[1]){
  for(j in 1:dim(M)[2]){
    print("---------------------------")
    print(paste("Element M[", i, ",", j, "]", sep = ""))
    print(M[i,j])
  }
}

# iterate over a 3D array and print square of each element
A <- array(data = 1:27, dim = c(3,3,3))

for(k in 1:dim(A)[3]){
  for(j in 1:dim(A)[2]){
    for(i in 1:dim(A)[1]){
      print("---------------------------")
      print(paste("Element M[", i, ",", j, ",", k, "]", sep = ""))
      print(A[i,j,k]^2)
    }
  }
}
