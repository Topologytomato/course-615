# name:Jing Wu
# date:2022/9/29
# homework3

library(dplyr)
library(ggplot2)
library(tibble)

myName <- "Jing Wu"

# question1
iris.vers <- iris[iris$Species == "versicolor", c(colnames(iris))]
ans_1 <- iris.vers

# question2
data_versicolor <- iris[iris$Species == "versicolor", c("Sepal.Length", "Sepal.Width")]
sepal.dif <- data_versicolor$Sepal.Length- data_versicolor$Sepal.Width
ans_2 <- sepal.dif

# question3
iris.vers$sepal.dif <- sepal.dif
ans_3 <- iris.vers

# question4
ans_4 <- sapply(mtcars,class)

# question5
newmtc <- mtcars
newmtc$am <- as.integer(newmtc$am)
newmtc$cyl <- as.integer(newmtc$cyl)
newmtc$vs <- as.integer(newmtc$vs)
ans_5 <- sapply(newmtc,class)

# question6
ans_6 <- round(newmtc,1)

# question7
ans_7 <- iris %>%
  filter(Species == 'virginica' & Sepal.Width > 3.5)

# question8
ans_8 <- iris[iris$Species == 'virginica' & iris$Sepal.Width > 3.5,head(colnames(iris),-1)]

# question9
r_id <- iris %>%
     mutate(row_id=row_number()) %>%
     filter(Species == 'virginica' & Sepal.Width > 3.5) %>%
     select(row_id)
ans_9 <- c(r_id$row_id)

# question10
number_10 <- diamonds %>%
  filter(cut == 'Ideal' & carat < 0.21) %>%
  count()
ans_10 <- as.integer(number_10)

# question11
number_11 <- diamonds %>%
  filter( x + y + z > 40) %>%
  count()
ans_11 <- as.integer(number_11)

# question 12
number_12 <- diamonds %>%
  filter(price > 10000 | depth >= 70) %>%
  count()
ans_12 <- as.integer(number_12)

# question 13
diam_13 <- diamonds %>%
  slice(67,982) %>%
  select(color,y)
ans_13 <- diam_13

# question 14
diam_14 <- diamonds %>%
  slice(453,792,10489) %>%
  select(colnames(diamonds))
ans_14 <- diam_14

# question 15
diam_15 <- diamonds %>%
  slice(1:10) %>%
  select(x,y,z)
ans_15 <- diam_15

# question 16
newdiam <- diamonds %>%
  slice(1:1000)
ans_16 <- newdiam

# question 17
ans_17 <- arrange(newdiam,price)
  
# question 18
set.seed(56)
diam750 <- sample_n(diamonds,750)
ans_18 <- diam750

# question 19
sum_diam750 <- summary(diam750)
ans_19 <- sum_diam750







