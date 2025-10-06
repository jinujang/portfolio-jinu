install.packages("nnet")
install.packages("caret")
install.packages("reshape2")

library("nnet")
library(nnet)
library(caret)
library(ROCR)
library(neuralnet)

NBA <- read.csv("nba(2).csv", header = T)

plot(NBA$癤풱ALARY)
NBA1<-NBA[NBA$Age == "25" , c(1:27)]
NBA1$癤풱ALARY <- as.factor(NBA1$癤풱ALARY)

set.seed(1)
t_index <- sample(1:nrow(NBA1),size = nrow(NBA1)*0.7)
train<-NBA1[t_index, ]
test<-NBA1[-t_index, ]


library(nnet)
m2 <- nnet(癤풱ALARY ~ FT+FG+GS+PTS, data=train,size=2)
m3 <- nnet(癤풱ALARY ~ FT+FG+GS+PTS, data=train,size=3)
m4 <- nnet(癤풱ALARY ~ FT+FG+GS+PTS, data=train,size=4)
m5 <- nnet(癤풱ALARY ~ FT+FG+GS+PTS, data=train,size=5)
m6 <- nnet(癤풱ALARY ~ FT+FG+GS+PTS, data=train,size=6)
m7 <- nnet(癤풱ALARY ~ FT+FG+GS+PTS, data=train,size=7)
m8 <- nnet(癤풱ALARY ~ FT+FG+GS+PTS, data=train,size=8)


print(m2)
print(m3)
print(m4)
print(m5)
print(m6)
print(m7)
print(m8)

set.seed(2)


library(reshape2)
install.packages("devtools")
library(devtools)
source_url("https://gist.githubusercontent.com/Peque/41a9e20d6687f2f3108d/raw/85e14f3a292e126f1454864427e3a189c2fe33f3/nnet_plot_update.r")
plot.nnet(m2)

library(forecast)