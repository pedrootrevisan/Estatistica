iris
str(iris)
levels(iris$Species)
iris[34,]
iris

indices<- sample(1:nrow(iris), size = nrow(iris), replace = FALSE)
sample(150)

iris <- iris[indices,]
head(iris)
tail(iris)

n <- round(nrow(iris) * 0.8)
n
treinamento <- iris[1:n,]
teste <- iris[(n+1):nrow(iris),]
summary(treinamento)

x <- c(5,2,10,7,3)
sort(x)
summary(x)
barplot(table(treinamento$Species))
hist(treinamento$Petal.Length, breaks = 10, xlab="tamanho da petala", main="historiograma do tamanho da pelata")

par(mfrow = c(1,3))


iris$Species
virginica <- treinamento[treinamento$Species == "virginica",]
setosa <- treinamento[treinamento$Species == "setosa",]
versicolor <- treinamento[treinamento$Species == "versicolor",]

hist(virginica$Petal.Length, breaks = 10, xlab="largura da petala", main="virginica", xlim = c(0,7), ylim = c(0, 10))
hist(versicolor$Petal.Length, breaks = 10, xlab="largura da petala", main="versicolor", xlim = c(0,7), ylim = c(0, 10))
hist(setosa$Petal.Length, breaks = 10, xlab="largura da petala", main="setosa", xlim = c(0,7), ylim = c(0, 10))


hist(virginica$Petal.Width, breaks = 10, xlab="comprimento da petala", main="virginica", xlim = c(0,2.5), ylim = c(0, 10))
hist(versicolor$Petal.Width, breaks = 10, xlab="comprimento da petala", main="versicolor", xlim = c(0,2.5), ylim = c(0, 10))
hist(setosa$Petal.Width, breaks = 10, xlab="comprimento da petala", main="setosa", xlim = c(0,2.5), ylim = c(0, 10))

par(mfrow=c(1,1))
plot(x = treinamento$Petal.Length, y = treinamento$Petal.Width, pch = 16, cex=0.8, type="n")
points(x=setosa$Petal.Length, y=setosa$Petal.Width, col="blue", pch=16)
points(x=virginica$Petal.Length, y=virginica$Petal.Width, col="black", pch=16)
points(x=versicolor$Petal.Length, y=versicolor$Petal.Width, col="green", pch=16)
abline(h = 1.6)
abline(v = 5.2)

abline(h = 0.7)
abline(v = 4.5)

abline(v = 2.9)


previsao<-c()
for(j in 1:30){
  if (teste$Petal.Length[j] < 2.5){
    previsao[j] <- "setosa"
  } else if (teste$Petal.Width[j] > 1.6){
    previsao[j] <- "virginica"
  } else{
    previsao[j] <- "versicolor"
  }
  
}
previsao
teste[22,]
mean(previsao == teste$Species)

a<-boxplot(treinamento$Petal.Length)
a$stats

mean(sort(treinamento$Petal.Length[60:61]))

nrow(treinamento)/2

mean(sort(treinamento$Petal.Length[30:31]))

mean(sort(treinamento$Petal.Length[90:91]))
obline(n=1.5, col ="red")
hist(treinamento$Petal.Length)
hist(treinamento$Sepal.Length)
boxplot(treinamento$Sepal.Length)

boxplot(setosa$Petal.Length,versicolor$Petal.Length,virginica$Petal.Length,
        names = c("setosa","versicolor", "virginica"))
boxplot(setosa$Sepal.Width,versicolor$Sepal.Width,virginica$Sepal.Width,
        names = c("setosa","versicolor", "virginica"))
abline(h=3.2,col="red")

iris.arvore<- rpart(formula = Species ~ Petal.Lenght + Petal.width, data = treinamento)
