# Histograms & density plots

# simple histogram

set.seed("1234")
x <- runif(n = 1000, min = 0, max = 50)  # generate some random numbers
hist(x)

# add colors and labels
x <- rnorm(n = 1000, mean = 0, sd = 1)
hist(x = x,
     main = "Normal distribution N(0,1)",
     col = "deepskyblue2",
     border = "red",
     breaks = 30, 
     freq = F)

# draw density plot
d <- density(x)
plot(d, 
     main = "Density plot", 
     frame = F, 
     col = "brown1", 
     lwd = 2)

# combine histogram and density plot
hist(x = x,
     main = "Normal distribution N(0,1)",
     col = "deepskyblue2",
     border = "black",
     breaks = 30, 
     freq = F)
lines(d, 
     col = "brown1", 
     lwd = 2)

graphics.off()
