#import "Movies-Ratings.csv"
movies <- read.csv(file.choose())

library(ggplot2)

ggplot(data = movies, aes(x = CriticRating, y= AudienceRating, 
                          color = Genre, size = BudgetMillions)) + 
  geom_point()
