# Multi-plots

# Subplots

# Grid 3X1 mfrow
par(mfrow = c(3,1))
plot(airquality$Wind, airquality$Ozone, xlab = "", ylab = "", main = "Fig1")
plot(airquality$Ozone, airquality$Wind, xlab = "", ylab = "", main = "Fig2")
hist(airquality$Wind, xlab = "", ylab = "", main = "Fig3")


# Grid 2X2 mfrow
par(mfrow = c(2,2))
plot(airquality$Wind, airquality$Ozone, xlab = "", ylab = "", main = "Fig1")
plot(airquality$Ozone, airquality$Wind, xlab = "", ylab = "", main = "Fig2")
hist(airquality$Wind, xlab = "", ylab = "", main = "Fig3")
hist(airquality$Ozone, xlab = "", ylab = "", main = "Fig4")

# Grid 2X2 mfcol
par(mfrow = c(1,1))
par(mfcol = c(2,2))
plot(airquality$Wind, airquality$Ozone, xlab = "", ylab = "", main = "Fig1")
plot(airquality$Ozone, airquality$Wind, xlab = "", ylab = "", main = "Fig2")
hist(airquality$Wind, xlab = "", ylab = "", main = "Fig3")
hist(airquality$Ozone, xlab = "", ylab = "", main = "Fig4")


# Save figure

# save figure in png format
png("figure1.png")
plot(x = airquality$Wind,
     y = airquality$Ozone,
     col = "blue",
     main = "Ozone VS Wind",
     xlab = "Wind",
     ylab = "Ozone",
     pch = 16)
dev.off()

png("figure2.png",
    width = 1024, 
    height = 800, 
    units = "px")
plot(x = airquality$Wind,
     y = airquality$Ozone,
     col = "blue",
     main = "Ozone VS Wind",
     xlab = "Wind",
     ylab = "Ozone",
     pch = 16)
dev.off()

# save figure in pdf format
pdf("figure3.pdf", 
    width = 11.7, 
    height = 8.3)
plot(x = airquality$Wind,
     y = airquality$Ozone,
     col = "blue",
     main = "Ozone VS Wind",
     xlab = "Wind",
     ylab = "Ozone",
     pch = 16)
dev.off()


# save multiplot
pdf("figure4.pdf", 
    width = 11.7, 
    height = 8.3)
par(mfcol = c(2,2))
plot(airquality$Wind, airquality$Ozone, xlab = "", ylab = "", main = "Fig1")
plot(airquality$Ozone, airquality$Wind, xlab = "", ylab = "", main = "Fig2")
hist(airquality$Wind, xlab = "", ylab = "", main = "Fig3")
hist(airquality$Ozone, xlab = "", ylab = "", main = "Fig4")
dev.off()
