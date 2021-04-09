
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

o <- ggplot(data = movies, aes(x = BudgetMillions))
h <- o + geom_histogram(binwidth = 10, aes(fill = Genre), color = "black")

h + xlab("$(Millions)") + 
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x = element_text(color = "DarkGreen", size = 30), 
        axis.title.y = element_text(color = "Red", size = 30), 
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1, 1),
        legend.justification = c(1, 1),
        
        plot.title = element_text(color = "DarkBlue",
                                  size = 40,
                                  family = "Courier"))