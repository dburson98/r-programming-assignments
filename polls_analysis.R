# Assignment #3 - Poll Data (2016 “Poll” Data)

# 1) Make the data
Name      <- c("Jeb","Donald","Ted","Marco","Carly","Hillary","Bernie")
ABC_poll  <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll  <- c(12, 75, 43, 19, 1, 21, 19)

df_polls <- data.frame(Name, ABC_poll, CBS_poll)

# 2) Quick check of the data
str(df_polls)
head(df_polls)

# 3) Summary stats
mean(df_polls$ABC_poll)
mean(df_polls$CBS_poll)

median(df_polls$ABC_poll)
median(df_polls$CBS_poll)

range(df_polls$ABC_poll)
range(df_polls$CBS_poll)

# 4) Difference column (CBS - ABC)
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll
df_polls

# 5) Bar chart with ggplot (use tidyr to go long)
library(tidyr)
df_long <- df_polls |>
  pivot_longer(cols = c(ABC_poll, CBS_poll),
               names_to = "Poll",
               values_to = "Score")

library(ggplot2)
p <- ggplot(df_long, aes(x = Name, y = Score, fill = Poll)) +
  geom_col(position = "dodge") +
  labs(title = "Poll Results by Candidate (ABC vs CBS)",
       x = "Candidate", y = "Poll Percentage") +
  theme_minimal()

print(p)

# 6) Save plot for your blog
ggsave("polls_barplot.png", plot = p, width = 8, height = 5, dpi = 300)





           
           
           
      