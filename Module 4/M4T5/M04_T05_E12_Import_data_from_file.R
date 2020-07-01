# Import data from a file

# download data_import.zip file and copy it to project folder and unzip it!!!

# Import txt / csv file

# show strings as factor option !!!!!

# import txt file (";" separator, rownames, colnames)
df_txt1 <- read.table(file = "./data_import/df_semicolon.txt", header = T, sep = ";")

# import txt file ("tabulator" separator, rownames, colnames - full path)
df_txt2 <- read.table(file = "C:/MARKO/udemy_instructor/001_R_for_beginners/course_draft_material/R/data_import/df_tab.txt", header = T, sep = "\t")

# import csv file("," separator, colnames)
df_csv1 <- read.csv(file = "./data_import/df_comma.csv", header = T)
df_csv2 <- read.csv2(file = "./data_import/df_comma.csv", header = T, sep = ",") # must specify separator


# Import .xlsx file

# package
install.packages("readxl")
library(readxl)

# Import MS excel sheet called "cars"
df_xls1 <- readxl::read_excel(path = "./data_import/df.xlsx", sheet = "cars")

# Import MS excel sheet called "eruptions"
df_xls2 <- readxl::read_excel(path = "./data_import/df.xlsx", sheet = "eruptions")


# Import data from url & .json

# Case Studies in Biometry
# http://www.stats.ox.ac.uk/pub/datasets/csb/

# download data from url: http://www.stats.ox.ac.uk/pub/datasets/csb/ch1a.dat
df_url <- read.table(file = "http://www.stats.ox.ac.uk/pub/datasets/csb/ch1a.dat")

install.packages("data.table")
library(data.table)

df_url <- fread(input = "http://www.stats.ox.ac.uk/pub/datasets/csb/ch1a.dat")

# Import data from json format

install.packages("rjson")
library(rjson)
list_json <- rjson::fromJSON(file = "./data_import/data.json") # we import a list!!!


# Import data from statistical software

install.packages("haven")
library(haven)

# Import SPSS data (.sav)
df_SPSS <- haven::read_spss(file = "./data_import/survey.sav")

# Import STATA data (.dta)
df_STATA <- haven::read_stata(file = "./data_import/airline.dta")

# Import SAS data (.sas7bdat)
df_SAS <- haven::read_sas(data_file = "./data_import/cola.sas7bdat")


# Import data from database

# test dataset SQLite

install.packages("RSQLite")
library(RSQLite)

# connect to DB
con <- RSQLite::dbConnect(RSQLite::SQLite(), dbname = "./data_import/chinook.db")

# get list of all tables
dbListTables(con)

# get colnames of table
dbListFields(con, "albums")

# read table in memory
dbReadTable(con, "albums")

# query over table and save results to data frame 
df_DB <- dbGetQuery(con, "SELECT * FROM albums;")

# close DB connection
RSQLite::dbDisconnect(con)
