#library(readxl)
#murders <- read_excel("C:/Users/Pedro/Downloads/murders.csv")
#View(murders)

dados<- read.table(file = "murders.csv", header= TRUE,sep = ",")
dados

dados[1,]
dados[3,1]

dados[5,]

dados[c(2,27),4]

dados[dados$total == min(dados$total),]
dados[dados$total == max(dados$total),]$state
dados


dados$rate<-100000*dados$total/dados$population
write.table(dados,file="mortes.txt",sep = ",",row.names = FALSE)
dados$rate
dados$rate<-round(dados$rate, digits = 2)