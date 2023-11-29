# Iris Analysis

install.packages("tidyverse")
library(tidyverse)
install.packages("renv")
library(renv)

#loading data iris
data("iris")
head(iris)
summary(iris)
str(iris)


iris <- as_tibble(iris)
iris

iris %>% summarize_if(is.numeric, mean)

#Making plot
install.packages("ggplot2")
library(ggplot2)

ggplot(iris, aes(Sepal.Length, Sepal.Width))+
  geom_line(color = "green")+
  ggtitle("Mihaes plot")


ggplot(data=iris,mapping=aes(x=Petal.Length,y=Petal.Width))+
  geom_point(aes(color=Species),size=3)+
  geom_smooth(method="lm")+
  ggtitle("Mihaes second plot")
