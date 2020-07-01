# Bar charts

# simple bar chart
counts <- table(mtcars$cyl)
barplot(counts)

# create stacked bar chart
counts <- table(mtcars$vs, mtcars$cyl)
barplot(counts, 
        main="Car distribution by cylinders and VS",
        xlab="Number of cylinders", 
        ylab = "Frequency",
        col=c("deepskyblue","brown1"),
        legend = rownames(counts))

# create grouped bar chart
barplot(counts, 
        main="Car distribution by cylinders and VS",
        xlab="Number of cylinders", 
        ylab = "Frequency",
        col=c("deepskyblue","brown1"),
        legend = rownames(counts),
        beside = TRUE)
