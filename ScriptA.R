data(iris)
summary(iris)

# Load necessary libraries
library(ggplot2)

# Set seed for reproducibility
set.seed(42)

# Steve: Hello
var1 <- "new var"

# Generate random data
n <- 100
x <- rnorm(n)
y <- rnorm(n)

# Create a data frame
data <- data.frame(x = x, y = y)

# Create a funny plot
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(
    title = "The Great Scatter of Confusion",
    subtitle = "Where Randomness Meets Chaos",
    x = "X-axis: The Land of Uncertainty",
    y = "Y-axis: The Realm of Absurdity"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 20, face = "bold"),
    plot.subtitle = element_text(hjust = 0.5, size = 15)
  )

# Add some funny text annotations
text_labels <- c("Why am I here?", "Is this really data?", "I thought this was a party!", 
                 "Just winging it!", "Lost in the plot!", "Help! I'm confused!")

# Randomly place text labels
for (i in 1:6) {
  x_pos <- sample(data$x, 1)
  y_pos <- sample(data$y, 1)
  label <- sample(text_labels, 1)
  text_labels <- text_labels[text_labels != label] # Remove to avoid repeats
  p <- p + geom_text(aes(x = x_pos, y = y_pos, label = label), 
                     color = "darkgreen", size = 4, vjust = -1)
}


summary(iris)

mean(iris$Sepal.Length)

# Print the plot
print(p)

### Instructions to Run the Script:
1. Make sure you have R and RStudio installed.
2. Install the `ggplot2` package if you haven't already by running `install.packages("ggplot2")`.
3. Copy and paste the script into RStudio.
4. Run the script to see the funny plot!

This script creates a scatter plot with random points and adds humorous annotations at random positions. Enjoy the randomness and absurdity!