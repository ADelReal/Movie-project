  
#import "Movies-Ratings.csv"
movies <- read.csv(file.choose())

# checks the data in the CSV file
head(movies)
head(movies)
tail(movies)
str(movies)
summary(movies)

# renames the columns
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")

istall.package('ggplot2')

#activates ggplot2
library(ggplot2)

box <- ggplot(data = movies, aes(x = Genre, y = AudienceRating, color = Genre))
box + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5)
