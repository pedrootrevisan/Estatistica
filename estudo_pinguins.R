#usando knn
pinguim<- read.table(file = "pinguim.txt", header= TRUE,sep = ",")
indices<- sample(1:nrow(pinguim), size = nrow(pinguim), replace = FALSE)
sample(344)
pinguim<-na.omit(pinguim)
pinguim$species<-as.factor(pinguim$species)
pinguim$
pinguim$sex<-as.factor(pinguim$sex)
levels(pinguim$sex)
which(pinguim$sex == ".")
pinguim<-pinguim[-which(pinguim$sex == "."),]


pinguim <- pinguim[indices,]
head(pinguim)
tail(pinguim)
summary(pinguim)
table(pinguim$island)/nrow(pinguim)

n<-round(nrow(pinguim)*0.8)
n
treinamento<-pinguim[1:n,]
teste<-pinguim[(n+1):nrow(pinguim),]
summary(treinamento)

x <- c(5,2,10,7,3)
sort(x)
summary(x)


barplot(table(treinamento$species))
barplot(table(treinamento$island))
barplot(table(treinamento$sex))

par(mfrow = c(1,4))

hist(treinamento$culmen_length_mm,breaks = 10)
hist(treinamento$culmen_depth_mm,breaks = 10)
hist(treinamento$flipper_length_mm,breaks = 10)
hist(treinamento$body_mass_g,breaks = 10)

par(mfrow = c(1,3))

chinstrap<-treinamento[treinamento$species == "Chinstrap",]
adelie<-treinamento[treinamento$species == "Adelie",]
gentoo<-treinamento[treinamento$species == "Gentoo",]

hist(chinstrap$culmen_length_mm,breaks = 10, xlim = c(0,60))
hist(adelie$culmen_length_mm,breaks = 10, xlim = c(0,60)) #trim = 0.2
hist(gentoo$culmen_length_mm,breaks = 10, xlim = c(0,60))

hist(chinstrap$culmen_depth_mm,breaks = 10, xlim = c(10,30))
hist(adelie$culmen_depth_mm,breaks = 10,xlim = c(10,30))
hist(gentoo$culmen_depth_mm,breaks = 10,xlim = c(10,30))

hist(chinstrap$flipper_length_mm,breaks = 10, xlim=c(150,250))
hist(adelie$flipper_length_mm,breaks = 10,xlim=c(150,250))
hist(gentoo$flipper_length_mm,breaks = 10,xlim=c(150,250))

hist(chinstrap$body_mass_g,breaks = 10, xlim = c(2000,8000))
hist(adelie$body_mass_g,breaks = 10,xlim = c(2000,8000))
hist(gentoo$body_mass_g,breaks = 10,xlim = c(2000,8000))

