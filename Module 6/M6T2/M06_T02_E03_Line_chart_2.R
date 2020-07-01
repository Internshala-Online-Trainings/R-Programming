# Line charts 

# simple line chart
x <- 1:100
y <- log(x)
plot(x,y,type = "l")

# add labels
plot(x,y,
     type = "l",
     xlab = "x",
     ylab = "log(x)",
     main = "log function",
     lwd = 3,
     col = "brown3")

# multiple lines 
z <- log10(x)
w <- log(x, base = 20)

plot(x,y,
     type = "l",
     xlab = "x",
     ylab = "f(x)",
     main = "log functions",
     lwd = 3,
     col = "brown3",
     ylim = c(0,5))
lines(x,z,
      lwd = 3,
      col = "deepskyblue")
lines(x,w,
      lwd = 3,
      col = "purple")
abline(h = 5,
       lwd = 1,
       col = "black",
       lty = 3)

# add legend
plot(x,y,
     type = "l",
     xlab = "x",
     ylab = "f(x)",
     main = "log functions",
     lwd = 3,
     col = "brown3",
     ylim = c(0,5))
lines(x,z,
      lwd = 3,
      col = "deepskyblue")
lines(x,w,
      lwd = 3,
      col = "purple")
abline(h = 5,
       lwd = 1,
       col = "black",
       lty = 3)
legend("topleft", 
       col = c("brown3", "deepskyblue", "purple"),
       lty = c(1,1,1), lwd = c(3,3,3),
       legend = c("log", "log10", "log20"))
