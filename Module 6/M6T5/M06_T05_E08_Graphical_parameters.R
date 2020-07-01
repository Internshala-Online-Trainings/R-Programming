# Graphical parameters

# par() function
par()

par.default <- par() # save default parameters


# alter plotting simbols pch
par(pch = 8)

# scatterplot
x <- 1:10
y <- c(-1,2,5,4,-9,-15,5,22,-30,0)
plot(x,y)

plot(x,y,pch = 20)


# alter text and symbol size
par(cex = 2)

plot(x = airquality$Wind,
     y = airquality$Ozone,
     col = "blue",
     main = "Ozone VS Wind",
     xlab = "Wind",
     ylab = "Ozone")

par(cex = 2, cex.axis = 0.5, cex.lab = 0.75, cex.main = 0.8)


# Altering lines
par(par.default) # reset to default parameters

x <- 0:10
plot(x = x, y = rep(1,11), type = "l", lty = 1, lwd = 2, ylim = c(0,7), xlim = c(0,10))
abline(h = 2, lty = 2, lwd = 2)
abline(h = 3, lty = 3, lwd = 2)
abline(h = 4, lty = 4, lwd = 2)
abline(h = 5, lty = 5, lwd = 2)
abline(h = 6, lty = 6, lwd = 2)

# Colors

# The same "white" color
x1 <- 1
y1 <- 1
x2 <- 5
y2 <- 5
x3 <- 10
y3 <- 10

colors() # vector of colors

plot(x1,y1, pch = 21, cex = 3, col = "black", bg = "white", xlim = c(-20,20), ylim = c(-20,20))
points(x2,y2, pch = 21, cex = 3, col = "black", bg = "#ffffff")
points(x3,y3, pch = 21, cex = 3, col = "black", bg = colors()[1])

# alter colors of labels
par(col = "red", col.axis = "green", col.lab = "yellow", col.main = "black", fg = "gray87", bg = "gray50")

plot(x = airquality$Wind,
     y = airquality$Ozone,
     col = "blue",
     main = "Ozone VS Wind",
     xlab = "Wind",
     ylab = "Ozone",
     pch = 16)


# Fonts
par(par.default)
par(font = 1, font.axis = 3, font.lab = 5, font.main = 2, ps = 20, family = "sans")
plot(x = airquality$Wind,
     y = airquality$Ozone,
     col = "blue",
     main = "Ozone VS Wind",
     xlab = "Wind",
     ylab = "Ozone",
     pch = 16)

# Margins
par(mar = c(0,0,0,0))
par(mar = c(2,0,0,2))
par(mar = c(2,2,2,2))
par(mar = c(5,5,5,5))

plot(x = airquality$Wind,
     y = airquality$Ozone,
     col = "blue",
     main = "Ozone VS Wind",
     xlab = "Wind",
     ylab = "Ozone",
     pch = 16)
