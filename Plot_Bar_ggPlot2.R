library(ggplot2)
# create data
data <- data.frame(ID = as.factor(c(12,12,16,16,16,34,38,52)),
                   Rating = c("Good","Good","Good","Bad","Very Bad","Very Good","Very Bad","Bad"))

# get summary table of Rating
t <- table(data$Rating)
# get percentage list
percent <- as.vector(t)/nrow(data)

# plot
ggplot(data = data,aes(x=Rating)) + 
  geom_bar(aes(y = (..count..)/sum(..count..))) +
  ylab("Percentage") +
  ylim(0,0.4)