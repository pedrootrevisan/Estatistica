install.packages("readxl")
library(readxl)
indices<- sample(1:nrow(olive), size = nrow(olive), replace = FALSE)
sample(572)

n<- round(nrow(olive) * 0.8)
treino <- olive[1:n,]
teste <- olive[(n+1):nrow(olive),]
summary(treino)

x <- c(5,2,10,7,3)
sort(x)
summary(x)

barplot(table(treino$region))
 
northern <- treino[treino$region == "Northern Italy",]
Sardinia <- treino[treino$region == "Sardinia",]
Southern <- treino[treino$region == "Southern Italy",]  

par(mfrow=c(1,3))

hist(northern$linoleic, xlab = "quantidade")
hist(northern$linolenic, xlab = "quantidade")
hist(northern$eicosenoic)



hist(Sardinia$eicosenoic)
hist(Sardinia$linoleic) # divide norte e sardinia no 10


hist(Southern$linoleic)
hist(Southern$eicosenoic)# sul tem o maior valor

par(mfrow=c(1,1))
plot(y=treino$eicosenoic,x=treino$linoleic, pch = 16, cex=0.8, type="n")
points(y=northern$eicosenoic,x=northern$linoleic,pch=16,col="blue")
points(y=Sardinia$eicosenoic,x=Sardinia$linoleic,pch=16,col="red")
points(y=Southern$eicosenoic,x=Southern$linoleic,pch=16,col="green")
obline(h = 10.535)
abline(v = 0.0.08)

previsao<-c()
for(j in 1:114){
  if (teste$eicosenoic[j] >  0.1){
    previsao[j] <- "Southern Italy"
  } else if (teste$linoleic[j] > 10.5){
    previsao[j] <- "Sardinia"
  } else{
    previsao[j] <- "Northern Italy"
  }
}
previsao
teste[25,]
mean(previsao == teste$region)

