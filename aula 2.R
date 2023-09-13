sorteio <- sample(x = 1:100, size = 20, replace = TRUE)
## for
soma<- 0
for (j in 1:20) {
  soma<- soma + j
}
soma
sum(1:20)

medias<- c()
for(k in 1: 10000){
  dado<- sample(x = 1:6, size = 100, replace = TRUE)
  medias[k]<- mean(dado)
}
medias
hist(medias)

#while
final <- c()
for(k in 1:10000){
dado <- 0
lancamentos <- 0
while (dado != 5){
  dado<-sample(1:6,1)
  lancamentos <- lancamentos + 1
}
final[k]<- lancamentos
}
final
mean(final)
hist(final)

dado <- sample(1:6,3)
dado
if((dado %% 2) == 0){
  print("o resultado é par")
}else{
  print("o numero é impar")
}

dado <- sample(1:6,3, replace =  TRUE)
unique(dado)
length(dado)
qtd
if (c(qtd) == 3){
  print("todos iguais")
}else if(c(qtd)==2){
  print(" a um par igual")
}else{
  print("todos são diferentes")
}
