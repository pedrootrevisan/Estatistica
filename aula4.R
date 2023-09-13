#dados<- read.csv(file = "titanic.csv", header= TRUE)
#dados
titanic<-read.table(file = "titanic.csv", header =TRUE, sep = ",")

summary(titanic)

str(titanic)
titanic<-titanic[,-1] # retirando uma coluna "lixo"
str(titanic)

titanic$Survived <-as.factor(titanic$Survived)
table(titanic$Survived)
prop.table(table(titanic$Survived))
round(prop.table(table(titanic$Survived)), digits = 2)
barplot(table(titanic$Survived),
        ylim = c(0,600),
        names.arg = c("morreu", "sobreviveu"),
        col = c('#2c7fb8','#7fcdbb'))
#https://colorbrewer2.org/#type=sequential&scheme=BuGn&n=3  // cores de mapas

titanic$Sex <-as.factor(titanic$Sex)
table(titanic$Sex)
prop.table(table(titanic$Sex))
round(prop.table(table(titanic$Sex)), digits = 2)
barplot(table(titanic$Sex),
        ylim = c(0,750),
        names.arg = c("mulher", "homem"),
        col = c('#8856a7','#2c7fb8'))

table(titanic$Survived,titanic$Sex)
barplot(table(titanic$Survived,titanic$Sex),
        ylim = c(0,750),
        col = c('#fec44f',"#31a354"),
        beside = F, # T divide as barras
        xlim = c(0,4),
        args.legend = list(bty = "n", x = "right", cex = 0.9),
        legend.text = c("morreu", "sobreviveu")) 

titanic$Pclass <-as.factor(titanic$Pclass)
table(titanic$Survived, titanic$Pclass)
barplot(table(titanic$Survived, titanic$Pclass),
        ylim = c(0,750),
        col = c('#d95f0e',"#fff7bc"),
        beside = F, # T divide as barras
        xlim = c(0,5),
        args.legend = list(bty = "n", x = "right", cex = 0.9),
        legend.text = c("morreu", "sobreviveu")) 
homens<- titanic[titanic$Sex == "male",]
mulheres<- titanic[!titanic$Sex == "male",]
tabela_mulheres <- table(mulheres$Survived, mulheres$Pclass)
barplot(tabela_mulheres)
tabela_homens<- table(homens$Survived, homens$Pclass)
barplot(tabela_homens)
par(mfrow = c(1,2))
#boxplot()