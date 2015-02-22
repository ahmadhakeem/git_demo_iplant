# ggplot learning script
# Ahmad Hakeem ahmadhakeem@email.arizona.edu
# Feb 22 2015

#install.packages("ggplot2", dependencies = TRUE)
#install.packages("plyr")
#install.packages("ggthemes")
#install.packages("reshape2")

require(ggplot2)
require(plyr)
require(ggthemes)
require(reshape2)

head(iris)
iris[1:2, ]
#ddply(iris, .(Species), summarize, mean.Sep.Wid = mean())

myplot <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color=Species))
myplot + geom_point(aes(shape=Species), size=3)

head(d2)
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
d2plot <- ggplot(d2, aes(carat, price, color=color))
d2plot + geom_point()
