# Data frames

# Create DF & DF properties

# create data frame 
df1 <- data.frame(col1 = 1:3, 
                  col2 = c("a", "b", "c"), 
                  col3 = c(T, F, T), 
                  col4 = c(as.Date("2020-01-01"), as.Date("2020-01-03"), as.Date("2020-01-03")))


df1
View(df1)

# create data frame - vectors
col1 <- seq(10,100,10)
col2 <- seq(as.Date("2020-01-01"), length = 10, by = "weeks")
col3 <- rep("word", 10)

df2 <- data.frame(num = col1,
                  date = col2,
                  string = col3)

# check DF structure
str(df2)


# create data frame - matrix
M <- matrix(data = 1:100, nrow = 10, ncol = 10, byrow = T)
rownames(M) <- paste("row", 1:10, sep = "")
colnames(M) <- paste("col", 1:10, sep = "")
M
df3 <- as.data.frame(M)
df3

# check DF dimensions
dim(df3)
nrow(df3)
ncol(df3)

# check DF type / class
class(df3)
typeof(df3)


# Accessing DF

# let's create DF - employees
df_emp <- data.frame(id = 1:6,
                     name = c("Max", "Jane", "John", "Tony", "Janis", "Helen"),
                     surname = c("Gordon", "Smith", "Don", "Price", "Jett", "Dust"),
                     age = c(55, 35, 46, 22, 60, 27),
                     date_start_work = c(as.Date("1985-09-01"), as.Date("2010-10-01"), as.Date("1999-06-01"), as.Date("2019-03-01"), as.Date("1980-04-15"), as.Date("2015-02-20")),
                     gender = c("M", "F", "M", "M", "F", "M"),
                     manager_position = c(T, F, F, F, T, F)
                     )

# extract data as data frame (one column) - []
df_extr <- df_emp["name"]
df_extr
class(df_extr)

# extract data as vector (one column) [[]] $
df_extr <- df_emp[["age"]]
df_extr
class(df_extr) # vector factor
df_extr <- df_emp$age
df_extr
class(df_extr) # vector factor

# extract multiple columns
df_extr <- df_emp[c("name", "age")]
df_extr


# data frame slicing
df_emp

#extract second row in name column (1 cell)
df_emp[2,2]
df_emp[2,"name"]

# extract first 4 rows of last 2 columns 
df_emp[1:4, 6:7]
df_emp[1:4, c("gender", "manager_position")]

# extract first column (all rows)
df_emp[,1]
df_emp[,"id"]
df_emp$id

# extract last 2 rows (all columns) 
df_emp[5:6,]
cols <- colnames(df_emp)
df_emp[5:6, cols]


# Modifying data frame

# append column 
df_emp <- cbind(df_emp, role = c("director", "secretary", "analyst", "researcher", "CEO", "analyst"))
df_emp$new_col <- 1

# append rows 
df_emp <- rbind(df_emp, list(7, "Mark", "Jax", 32, as.Date("2020-01-01"), "M", F, "researcher", 1))

# problem with factor variables (new values not in factor levels)
# easy solution - append new row as data frame (rbind 2 data frames)!!! 
# will show few rows later

# remove column
df_emp$new_col <- NULL

# remove row
df_emp <- df_emp[-7,]

# merge two data frames (row wise)
df_new_emp <- data.frame(id = 7,
                         name = "Mark",
                         surname = "Jax",
                         age = 32,
                         date_start_work = as.Date("2020-01-01"),
                         gender = "M",
                         manager_position = F,
                         role = "researcher")

df_emp <- rbind(df_emp, df_new_emp)

# merge two data frames (column wise)
df_attr <- data.frame(eye_color = c("blue", "green", "brown", "hazel", "blue", "brown", "brown"),
                      hair_color = c("blonde", "light brown", "black", "brown", "blonde", "dark brown", "brown"))
df_emp <- cbind(df_emp, df_attr)


# Tips

# Df summary
summary(df_emp)

# rows subsetting
subset(x = df_emp, gender == "M")
subset(x = df_emp, gender == "F" & manager_position == T)

rows <- which(df_emp[,"gender"] == "M")
df_emp[rows,]

rows <- which(df_emp[,"gender"] == "F" & df_emp[,"manager_position"] == T)
df_emp[rows,]

# some calculations regarding data frames
nr_managers <- sum(df_emp$manager_position)
mean_age <- mean(df_emp$age)
df_emp$name_surname <- paste(df_emp$name, df_emp$surname, sep = " ") # merge name and surname

# use apply to sum over columns (age, manager_position)
apply(df_emp[,c("age", "manager_position")], 2, sum)


# some built in data frames
View(iris)
View(mtcars)
View(USArrests)
View(PlantGrowth)
# ... and many more

