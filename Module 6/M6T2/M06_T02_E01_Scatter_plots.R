# Scatterplots 

# simple scatterplot
x <- 1:10
y <- c(-1,2,5,4,-9,-15,5,22,-30,0)
plot(x,y)

library(datasets)

# add labels, real data
plot(x = airquality$Wind,
     y = airquality$Ozone,
     col = "blue",
     main = "Ozone VS Wind",
     xlab = "Wind",
     ylab = "Ozone",
     pch = 16)

# clear graphics
graphics.off()
