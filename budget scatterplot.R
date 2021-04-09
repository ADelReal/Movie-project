
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

q <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre, size = BudgetMillions))

q + geom_point(aes(x = BudgetMillions)) +
  xlab('BudgetMillions $$$')
