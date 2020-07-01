# Lists

# Create a list (and name elements)

# lets create some variables (different types)
a <- 10
b <- 2L
c <- TRUE
d <- "word"
v <- 1:10
names(v) <- paste("i", v, sep = "")
M <- matrix(data = seq(10,40,by = 10), nrow = 2, dimnames = list(c("r1", "r2"), c("c1", "c2")))
A <- array(data = 1:8, dim = c(2,2,2), dimnames = list(c("r1", "r2"), c("c1", "c2"), c("M1", "M2"))) 

# create list and include all variables (elements)
lst <- list(a, b, c, d, v, M, A)
lst
str(lst) # check list structure
typeof(lst) # check type
class(lst) # check class
is.list(lst) # check if object is list

# name each list member
names(lst) <- c("a", "b", "c", "d", "v", "M", "A")
lst

# alternative: define names as tags when list is created
list(a=a, b=b, c=c, d=d, v=v, M=M, A=A)


# Access list elements

# single square bracket [] (return a list)
lst1 <-lst[1] # access first list elements (return a list)
str(lst1)
class(lst1)

lst123 <-lst[c(1,2,3)] # access first three elements with index vector (return a list)
lst123
class(lst123)

# double square brackets [[]] (return original member)
ele <-lst[[5]] # extract 5th member-element (returns original element)
ele
is.vector(ele)

# use $ operator - extract by member name (return original member)
ele <- lst$M
ele
class(ele)


# Modify list 

# remove element from a list
lst
lst[1] <- NULL # remove first member
lst

# add element to a list (at the end)
length(lst)
lst[7] <- 1000
lst

# update value of a member in alist
lst[[7]] <- 500
lst[7]

# update value within a vector (on a list)
lst[[4]][5] <- 5000
lst[[4]]

# convert list to a vector
vec <- unlist(lst)
vec
is.vector(vec)



# Merging lists & nested lists

# create another list
lst1 <- list(el1 = c(1,5,10), el2 = TRUE)

# merge both lists
lst_merged <- c(lst, lst1)
lst_merged
str(lst_merged)
names(lst_merged)


# nested list (recursive procedure)
list3 <- list(1, c(T,F,F)) # list sub-level 3
list2 <- list(list3) # list sub-level 2
list1 <- list(list2) # list sub-level 1

str(list1)

# extract list level 2
list1[[1]]

# extract list level 3
list1[[1]][[1]]

# extract 1st member from list level 3
list1[[1]][[1]][[1]]

# extract 2nd member from list level 3
list1[[1]][[1]][[2]]
