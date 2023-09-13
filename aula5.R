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
hist(treinamento$Petal.Length, xlab = "tamanho da petala", 
     main = "histograma para tamanho da petala",
     ylab = "frequencia")

par(mfrow = c(4,1))
virginica<- iris[iris$Species == "virginica",]
versicolor<- iris[iris$Species == "versicolor",]
setosa<- iris[iris$Species == "setosa",]
tabela_virginica<-table(virginica$Petal.Length)
tabela_setosa<-table(setosa&Petal.lenght)
tabela_versicolor<-table(versicolor$Petal.Length)

par(mfrow = c(1,3))
hist(virginica$Petal.Length)
lines(density(virginica$Petal.Length), lwd= 3, col="blue")
hist(setosa&Petal.lenght)
hist(versicolor$Petal.Length)


barplot(x=treinamento$Petal.Length,y=treinamento$Petal.Width,pch = 16,cex = 0.8, type="n")
points(x = versicolor$Petal.lenght, y = versicolor$Petal.Width,
       col = "red", pch = 16)

points(x=virginica$Petal.Length, y=virginica$Petal.Width,col = "blue",pch = 16)

a <- boxplot(treinamento$Petal.Length, xlab)
a$stats
