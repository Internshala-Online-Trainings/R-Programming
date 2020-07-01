# Box plots

# simple box plot
x <- rnorm(n = 1000, mean = 10, sd = 5)
boxplot(x)

# add real data, labels
boxplot(formula = mpg~cyl,
        data = mtcars,
        main = "Box plot",
        xlab = "Number of cylinders (cyl)",
        ylab = "Miles per gallon (mpg)")
