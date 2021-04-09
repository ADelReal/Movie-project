
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

v <- ggplot(data = movies, aes(x = BudgetMillions))

v + geom_histogram(binwidth = 10, aes(fill = Genre), color = "black") + facet_grid(Genre ~ ., scales = "free")
