# Export data to a file

# download data_export.zip file and copy it to project folder and unzip it!!!

# lets create DF to export it
df <- data.frame(id = 1:10, 
                 string = rep("a",10), 
                 date = seq(as.Date("2020-01-01"), length = 10, by = "day"),
                 rnd_number = runif(n = 10, min = 0, max = 1)
                 )
df

# Export to txt / csv file

# export to txt file (";" separator)
write.table(x = df, file = "./data_export/df_semicolon.txt", col.names = T, sep = ";")

# export to txt file ("\t" separator without quotes)
write.table(x = df, file = "./data_export/df_tab.txt", col.names = T, sep = "\t", quote = F)

# export to csv file ("," separator without quotes, rownames added)
df1 <- df
rownames(df1) <- paste("row", 1:10, sep = "")
write.table(x = df1, file = "./data_export/df_tab.csv", col.names = T, sep = ",", quote = F, row.names = T)


# Export to .xlsx file

install.packages("writexl")
library(writexl)
write_xlsx(x = df, path = "./data_export/df.xlsx")
library(rio)
rio::export(df, "./data_export/df1.xlsx")


# Export data to .json

library(rjson)
list_json <- rjson::fromJSON(file = "./data_import/data.json") # we import a list!!!

#install.packages("jsonlite")
library(jsonlite)
write(toJSON(list_json), "./data_export/df.json")


# Export data to statistical software format

library(haven)

# Export to SPSS data (.sav)
haven::write_sav(data = df, path = "./data_export/df.sav")

# Export to STATA data (.dta)
haven::write_dta(data = df, path = "./data_export/df.dta")

# Export to SAS data (.sas7bdat)
df_SAS <- haven::write_sas(data = df, path = "./data_export/df.sas7bdat")


# Export data to database

library(RSQLite)

# connect to DB
con <- RSQLite::dbConnect(RSQLite::SQLite(), dbname = "./data_export/empty.db")

# get list of all tables
dbListTables(con)

# write data frame to DB table
dbWriteTable(conn = con, name = "df", value = df)

# get list of all tables
dbListTables(con)

# read table in memory
dbReadTable(con, "df")

# query over table and save results to data frame 
df_DB <- dbGetQuery(con, "SELECT * FROM df;")

# close DB connection
RSQLite::dbDisconnect(con)
