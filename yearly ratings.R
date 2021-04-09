
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

w <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre))

w + geom_point(aes(size = BudgetMillions)) + geom_smooth() + facet_grid(Genre ~ Year)
