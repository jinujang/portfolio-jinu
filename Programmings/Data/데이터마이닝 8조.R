setwd("C:/Users/¹æ¼º¿ø/Desktop/NBA")
NBA = read.csv(file = "NBA.csv", header = T, fileEncoding="UTF-8-BOM")

library(readxl)
library(ggplot2) 
library(car)
library(Metrics)
library(corrplot)
library(tidyverse)

vars<-c("SALARY","Age","G","GS","MP","FG","FGA","FG.")
target <- NBA[,vars]
pairs(target)

vars1<-c("SALARY","X3P","X3PA","X3P.","X2P","X2PA","X2P.","eFG.")
target1 <- NBA[,vars1]
pairs(target1)

vars2<-c("SALARY","FT","FTA","FT.","ORB","DRB","TRB","AST")
target2 <- NBA[,vars2]
pairs(target2)

vars3<-c("SALARY","STL","BLK","TOV","PF","PTS")
target3 <- NBA[,vars3]
pairs(target3)


cor(NBA)
df=cor(NBA)
df
par(mfrow=c(1,1))
corrplot(df)

class(NBA)
colnames(NBA)

boxplot(NBA$SALARY, xlab="NBA", ylab="SALARY")
boxplot(NBA$SALARY)$stats
NBA$SALARY<-ifelse(NBA$SALARY<22248|NBA$SALARY>4402546,NA,NBA$SALARY)
boxplot(NBA$SALARY, xlab="NBA", ylab="SALARY")$stats

boxplot(NBA$Age, xlab="NBA", ylab="Age")
boxplot(NBA$Age)$stats
NBA$Age<-ifelse(NBA$Age<19|NBA$Age>38,NA,NBA$Age)
boxplot(NBA$Age, xlab="NBA", ylab="Age")$stats

boxplot(NBA$G, xlab="NBA", ylab="G")
boxplot(NBA$G)$stats

boxplot(NBA$GS, xlab="NBA", ylab="GS")
boxplot(NBA$GS)$stats

boxplot(NBA$MP, xlab="NBA", ylab="MP")
boxplot(NBA$MP)$stats

boxplot(NBA$FG, xlab="NBA", ylab="FG")
boxplot(NBA$FG)$stats
NBA$FG<-ifelse(NBA$FG<0|NBA$FG>640,NA,NBA$FG)
boxplot(NBA$FG, xlab="NBA", ylab="FG")$stats

boxplot(NBA$FGA, xlab="NBA", ylab="FGA")
boxplot(NBA$FGA)$stats
NBA$FGA<-ifelse(NBA$FGA<0|NBA$FGA>1415,NA,NBA$FGA)
boxplot(NBA$FGA, xlab="NBA", ylab="FGA")$stats

boxplot(NBA$FG., xlab="NBA", ylab="FG%")
boxplot(NBA$FG.)$stats
NBA$FG.<-ifelse(NBA$FG.<0.282|NBA$FG.>0.613,NA,NBA$FG.)
boxplot(NBA$FG., xlab="NBA", ylab="FG%")$stats

boxplot(NBA$X3P, xlab="NBA", ylab="3P")
boxplot(NBA$X3P)$stats
NBA$X3P<-ifelse(NBA$X3P<0|NBA$X3P>176,NA,NBA$X3P)
boxplot(NBA$X3P, xlab="NBA", ylab="3P")$stats

boxplot(NBA$X3PA, xlab="NBA", ylab="3PA")
boxplot(NBA$X3PA)$stats
NBA$X3PA<-ifelse(NBA$X3PA<0|NBA$X3PA>530,NA,NBA$X3PA)
boxplot(NBA$X3PA, xlab="NBA", ylab="3PA")

boxplot(NBA$X3P., xlab="NBA", ylab="3P%")
boxplot(NBA$X3P.)$stats
NBA$X3P.<-ifelse(NBA$X3P.<0|NBA$X3P.>0.615,NA,NBA$X3P.)
boxplot(NBA$X3P., xlab="NBA", ylab="3P%")

boxplot(NBA$X2P, xlab="NBA", ylab="2P")
boxplot(NBA$X2P)$stats
NBA$X2P<-ifelse(NBA$X2P<0|NBA$X2P>424,NA,NBA$X2P)
boxplot(NBA$X2P, xlab="NBA", ylab="2P")

boxplot(NBA$X2PA, xlab="NBA", ylab="2PA")
boxplot(NBA$X2PA)$stats
NBA$X2PA<-ifelse(NBA$X2PA<0|NBA$X2PA>842,NA,NBA$X2PA)
boxplot(NBA$X2PA, xlab="NBA", ylab="2PA")

boxplot(NBA$X2P., xlab="NBA", ylab="2P%")
boxplot(NBA$X2P.)$stats
NBA$X2P.<-ifelse(NBA$X2P.<0.333|NBA$X2P.>0.673,NA,NBA$X2P.)
boxplot(NBA$X2P., xlab="NBA", ylab="2P%")

boxplot(NBA$eFG., xlab="NBA", ylab="eFG%")
boxplot(NBA$eFG.)$stats
NBA$eFG.<-ifelse(NBA$eFG.<0.375|NBA$eFG.>0.660,NA,NBA$eFG.)
boxplot(NBA$eFG., xlab="NBA", ylab="eFG%")

boxplot(NBA$FT, xlab="NBA", ylab="FT")
boxplot(NBA$FT)$stats
NBA$FT<-ifelse(NBA$FT<0|NBA$FT>220,NA,NBA$FT)
boxplot(NBA$FT, xlab="NBA", ylab="FT")

boxplot(NBA$FTA, xlab="NBA", ylab="FTA")
boxplot(NBA$FTA)$stats
NBA$FTA<-ifelse(NBA$FTA<0|NBA$FTA>261,NA,NBA$FTA)
boxplot(NBA$FTA, xlab="NBA", ylab="FTA")

boxplot(NBA$FT., xlab="NBA", ylab="FT%")
boxplot(NBA$FT.)$stats
NBA$FT.<-ifelse(NBA$FT.<0.4760|NBA$FT.>1,NA,NBA$FT.)
boxplot(NBA$FT., xlab="NBA", ylab="FT%")

boxplot(NBA$ORB, xlab="NBA", ylab="ORB")
boxplot(NBA$ORB)$stats
NBA$ORB<-ifelse(NBA$ORB<0|NBA$ORB>110,NA,NBA$ORB)
boxplot(NBA$ORB, xlab="NBA", ylab="ORB")

boxplot(NBA$DRB, xlab="NBA", ylab="DRB")
boxplot(NBA$DRB)$stats
NBA$DRB<-ifelse(NBA$DRB<0|NBA$DRB>490,NA,NBA$DRB)
boxplot(NBA$DRB, xlab="NBA", ylab="DRB")

boxplot(NBA$TRB, xlab="NBA", ylab="TRB")
boxplot(NBA$TRB)$stats
NBA$TRB<-ifelse(NBA$TRB<0|NBA$TRB>635,NA,NBA$TRB)
boxplot(NBA$TRB, xlab="NBA", ylab="TRB")

boxplot(NBA$AST, xlab="NBA", ylab="AST")
boxplot(NBA$AST)$stats
NBA$AST<-ifelse(NBA$AST<0|NBA$AST>263,NA,NBA$AST)
boxplot(NBA$AST, xlab="NBA", ylab="AST")

boxplot(NBA$STL, xlab="NBA", ylab="STL")
boxplot(NBA$STL)$stats
NBA$STL<-ifelse(NBA$STL<0|NBA$STL>109,NA,NBA$STL)
boxplot(NBA$STL, xlab="NBA", ylab="STL")

boxplot(NBA$BLK, xlab="NBA", ylab="BLK")
boxplot(NBA$BLK)$stats
NBA$BLK<-ifelse(NBA$BLK<0|NBA$BLK>53,NA,NBA$BLK)
boxplot(NBA$BLK, xlab="NBA", ylab="BLK")

boxplot(NBA$TOV, xlab="NBA", ylab="TOV")
boxplot(NBA$TOV)$stats
NBA$TOV<-ifelse(NBA$TOV<0|NBA$TOV>206,NA,NBA$TOV)
boxplot(NBA$TOV, xlab="NBA", ylab="TOV")

boxplot(NBA$PF, xlab="NBA", ylab="PF")
boxplot(NBA$PF)$stats

boxplot(NBA$PTS, xlab="NBA", ylab="PTS")
boxplot(NBA$PTS)$stats
NBA$PTS<-ifelse(NBA$PTS<0|NBA$PTS>1652,NA,NBA$PTS)
boxplot(NBA$PTS, xlab="NBA", ylab="PTS")

table(is.na(NBA))

model1<-lm(SALARY~., data = NBA)
summary(model1)

model2<-lm(SALARY~Age+G+GS+X2P+X2PA+ORB+AST+PTS, data = NBA)
summary(model2)

model3<-lm(SALARY~Age+G+GS+X2P+ORB+AST+PTS, data = NBA)
summary(model3)


car::vif(model3)
(car::vif(model3))>10

model4<-lm(SALARY~Age+G+GS+ORB+AST+PTS, data = NBA)
summary(model4)

car::vif(model4)
(car::vif(model4))>10

model5<-lm(SALARY~Age+G+GS+ORB+PTS, data = NBA)
summary(model5)
car::vif(model5)
(car::vif(model5))>10

cor(NBA)

par(mfrow = c(2,2))
plot(model5)
shapiro.test(model5$residuals)
