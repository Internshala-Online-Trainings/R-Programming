# Date and time

# Create date object

# current date
cur_date <- Sys.Date()
cur_date

# check class and type
class(cur_date)
typeof(cur_date)

# unclass date to get a number
unclass(cur_date) # days from 1970 Epoch 
18193 / 365.25 # years from 1970
1970 + 49 # check years
0.8 * 12 # reminder for months

# print current date in other formats
format(cur_date, "%Y") # print only year
format(cur_date, "%m") # print only month
format(cur_date, "%d") # print only day of month
format(cur_date, "%d/%m/%y") # custom date formating
format(cur_date, "%dth of %B, %Y") # custom date formatting
format(cur_date, "%w") # print weekday as number 0 = Sunday
format(cur_date, "%j") # print day of the year
format(cur_date, "%W") # print week of the year (number)


# Date object calculations

# create another date
sel_date <- as.Date("2020-01-01", format = "%Y-%m-%d")

# calculate difference between selected and current date
sel_date - cur_date

# difference in weeks
difftime(sel_date, cur_date, units = "weeks")

# add 100 days to current date
cur_date + 100

# generate a vector of dates
selected_holidays <- as.Date(c("2020-01-01", "2020-04-12", "2020-12-25", "2020-12-31"), format = "%Y-%m-%d")
names(selected_holidays) <- c("New Year's Day", "Easter", "Christmas", "New Year's Eve") # naming holidays
selected_holidays

# subtract 1 day from each date
selected_holidays - 1

# calculate difference in days between 2 holidays
diff(selected_holidays)

# generate a sequence of days (days in year 2020)
days_2020 <- seq(as.Date("2020-01-01", format = "%Y-%m-%d"), length = 365, by = "day")

# generate a sequence of weeks (weeks in year 2020)
weeks_2020 <- seq(as.Date("2020-01-04", format = "%Y-%m-%d"), length = 53, by = "week")

# generate a sequence of months (months in year 2020)
months_2020 <- seq(as.Date("2020-01-01", format = "%Y-%m-%d"), length = 12, by = "month")


# Date-time object create

# POSIXct
dt_ct <- as.POSIXct("2020-01-01 08:00:20", format = "%Y-%m-%d %H:%M:%S")
dt_ct

# check class and type
class(dt_ct)
typeof(dt_ct)

# unclass
unclass(dt_ct) # seconds from 1970-01-01 00:00:00 Epoch 
1579503600 / 60 # minutes from Epoch
1579503600 / (60*60*24) # days from Epoch
1579503600 / (60*60*24*365.25) # Years from Epoch


# POSIXlt
dt_lt <- as.POSIXlt("2020-01-01 08:00:20", format = "%Y-%m-%d %H:%M:%S")
dt_lt

# check class and type
class(dt_ct)
typeof(dt_ct)

# unclass
unclass(dt_lt)

# extract hour
dt_lt$`hour`


# we can specify time zone
dt_lt <- as.POSIXlt("2020-01-01 08:00:20", format = "%Y-%m-%d %H:%M:%S", tz = "GMT")
dt_lt


# Date-time object calculations

# get current date-time
cur_dt <- Sys.time()

# define another date-time object
dt1 <- as.POSIXlt("2020-01-01 20:45:20", format = "%Y-%m-%d %H:%M:%S")

# calculate difference in days between 2 dates
dt1 - cur_dt

# difference in seconds
difftime(dt1,cur_dt, units = "secs")

# substract 360 seconds from current date-time
cur_dt - 360

# generate a sequence of time stamps (minutes in one day)
mins_010120 <- seq(as.POSIXlt("2020-01-01 00:01:00", format = "%Y-%m-%d %H:%M:%S"), length = (24*60), by = "min")
length(mins_010120)
head(mins_010120)
tail(mins_010120)

# show only hour and minute
format(mins_010120, "%H:%M")

