jubarte<-treino_baleias[treino_baleias$especie == "Jubarte",]
cachalote<-treino_baleias[treino_baleias$especie == "Cachalote",]
baleia_azul<-treino_baleias[treino_baleias$especie == "Baleia Azul",]
baleia_fin<-treino_baleias[treino_baleias$especie == "Baleia Fin",]

mean(jubarte$peso)
mean(cachalote$peso)
mean(baleia_azul$peso)
mean(baleia_fin$peso)
#observa uma descrepancia nos peso principalmente sobre a baleia azul e fin

var(jubarte$peso)
var(cachalote$peso)
var(baleia_azul$peso)
var(baleia_fin$peso)
#observa-se um grande indice de variançao
#porem nao e possivel concluir nada previamente disso sozinho

sd(jubarte$peso)
sd(cachalote$peso)
sd(baleia_azul$peso)
sd(baleia_fin$peso)
#nota se um desvio acentuado nas baleias azul e fin

100*sd(jubarte$peso)/mean(jubarte$peso)
100*sd(cachalote$peso)/mean(cachalote$peso)
100*sd(baleia_azul$peso)/mean(baleia_azul$peso)
100*sd(baleia_fin$peso)/mean(baleia_fin$peso)
#na pratica o coenficiente de variação mostra que as baleia azuis e fim
#tem um baixo indice de desvio dentro da media, logo sao mais estaveis as anlises

median(baleia_azul$volume_cranio)
#logo metade dos indiviudos tem um menor volume de cranio e a outra metade um volume maior

par(mfrow = c(1,4))
hist(jubarte$peso, breaks = 10)
hist(cachalote$peso, breaks = 10)
hist(baleia_azul$peso, breaks = 10)
hist(baleia_fin$peso, breaks = 10)
#nota grande diferenca na baleia azul pra demais, e o mesmo para a fin em relação a cachalote e jubarte

par(mfrow = c(1,4))
boxplot(jubarte$comprimento)
boxplot(cachalote$comprimento)
boxplot(baleia_azul$comprimento)
boxplot(baleia_fin$comprimento)
#tambem percebe grande diferenca nas especies azul e fin, e uma leve margem de diferenciação nas jubarte e cachalote

plot(x=treino_baleias$profundidade_maxima,y=treino_baleias$comprimento, pch = 16, cex=0.8, type="n")
points(x=jubarte$profundidade_maxima,y=jubarte$comprimento, col = "red", pch = 16)
points(x=cachalote$profundidade_maxima,y=cachalote$comprimento, col = "green",pch= 16)
points(x=baleia_azul$profundidade_maxima,y=baleia_azul$comprimento, col = "blue", pch = 16)
points(x=baleia_fin$profundidade_maxima,y=baleia_fin$comprimento, col = "pink", pch = 16)
abline(v=170)

previsao<-c()
for(j in 1:50){
  if (teste_baleias$peso[j] > 16000){
    previsao[j] <- "Baleia Azul"
  } else if (teste_baleias$peso[j] < 16000 && teste_baleias$peso> 8500 ){
    previsao[j] <- "Baleia Fin"
  } else if(teste_baleias$profundidade_maxima[j] > 167){
    previsao[j] <- "Jubarte"
  }else{
    previsao[j] <- "Cachalote"
  }
  
}
#escolhia as variasveis com base em diferenciação e maior discrepancia entre os valores das especies, o modelo poderia ser mais eficaz usando knn pra diferencia as especies cachalote e jubarte

previsao
teste_baleias[25,]
mean(previsao == teste_baleias$especie)


plot(x=treino_baleias$profundidade_maxima,y=treino_baleias$peso, pch = 16, cex=0.8, type="n")
points(x=jubarte$profundidade_maxima,y=jubarte$peso, col = "red", pch = 16)
points(x=cachalote$profundidade_maxima,y=cachalote$peso, col = "green",pch= 16)
points(x=baleia_azul$profundidade_maxima,y=baleia_azul$peso, col = "blue", pch = 16)
points(x=baleia_fin$profundidade_maxima,y=baleia_fin$peso, col = "pink", pch = 16)
abline(v=167)
abline(h=8500)
abline(h=16000)


#questão2
steve <- c()
garnit <- c()
sequencia <- c()
final <- c()
resultado <- c()

for (j in 1:10000) {
  steve <- sample(0:1, 3, replace = TRUE)
  garnit <- sample(0:1, 3, replace = TRUE)
  vitoria_steve <- 0
  vitoria_garnit <- 0
  
  for (i in 1:3) {
    while (vitoria_garnit != 1 || vitoria_steve != 1) {
      sequencia <- sample(0:1, 3, replace = TRUE)
      if (all(sequencia == steve)) {
        resultado <- steve
        vitoria_steve <- 1
      } else if (all(sequencia == garnit)) {
        resultado <- garnit
        vitoria_garnit <- 1
      }
    }
  }
  final[j] <- resultado
}

mean(final)


#questão 3

as.factor(dados$sexo)
barplot(table(dados$sexo))
#observa-se uma predominiancia do sexo feminino

homem<-dados[dados$sexo == "homem",]
mulher<-dados[dados$sexo == "mulher",]
par(mfrow = c(1,2))

hist(dados$idade)
#observa-se que na amostragem predomina pessoas acima dos 50 anos, com uma rara presença jovens, logo o assasino tinha uma preferencia a vitimas de idade
boxplot(dados$idade)
#observase que a media de idade encontrase  por voltados 60 anos e fica ainda mais evidente a predominancia de pessoas de idade
#ainda se observa que casos de pessoas jovens realmente sao excessoes, e saem do padrao das vitimas do assasino
hist(dados$hora)
#observa-se uma forte predominancia nos horarios entre 12 e 15hrs, para a hora do assasinato
#o que indica um costume/modus operante do assasino

#é nitido que o assasino possuia um modus operante bem estabelicido, sendo possivel estabelecer um padrao para as vitimas e assasinatos, sendo marcado por uma forte predominancia de mulheres, acima dos 50 anos e que operavam entre 12:00 e 15:hrs