#comentario
3+3 #soma
3-2  #sub
3*3 #mult
3/2 #div
3**2 #ou 3^2
sqrt(10) #raiz
abs(x) #faz o modulo
exp(2) #func exponencial
log(23)
?log #pergumanta abre doc
log(x = 10, b = 2) # b = base 
a <- 3+2 # atribuindo valor a variavel
3+2 -> A # atribuindo valor
class(a)
w <- "string"
class(w)
x <- c(5,5,3,2,1) #criando vetor
# vetor so adimite elementos da mesma classe
x[c(2,3,4)]
x*2
c(x,2)/c(2,3)
c(2,3)*x
sum(x) #soma objetos de X
sum(x)/length(x) #media
mean(x)#media
cumsum(x)
sample(x=1:6, size = 20, replace = TRUE)
sample(x = 1:3, size = 10, replace = TRUE, prob = c(5,2,1))
k<-sample(x = 1:6, size = 8, replace = TRUE, prob = c(5,2,1))
set.seed(k) # definindo semente pra o sorteio 

dado <- sample(x = 1:6, size= 20,replace = TRUE)
saiu_6 <- dado == 6 #comparação logica
sum(saiu_6)
dado[dado<4]
dado2 <- sample(1:6,size = 1000, replace = TRUE)
dado3 <- sample(1:6,size = 1000, replace = TRUE)
dado2 == dado3
sum(dado2 == dado3)
mean(dado2 == dado3)
moeda <- sample(x = c("cara","coroa"), size = 20, replace = TRUE)
saiu_cara<- moeda == "cara"
saiu_cara
sum(saiu_cara)
media_acumulada<-cumsum(saiu_cara)/1:500
plot(x= 1:500, y = media_acumulada, type = "l") #p = ponto / l = linha
obline
