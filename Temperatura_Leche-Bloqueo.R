base<-read.csv("C:/Users/dania/Desktop/Temperatura_Leche-Bloqueo.csv", header=T)
base
str(base)
View(base)
base$Bloque=as.factor(base$Bloque)
base$Tratamiento=as.factor(base$Tratamiento)
anovi=aov(base$Temperatura~base$Bloque+base$Tratamiento)
summary(anovi)

boxplot(base$Temperatura~base$Tratamiento,col=2:6,main="Boxplot por tratamientos")
boxplot(base$Temperatura~base$Bloque,col=7:11,main="Boxplot por bloque")
interaction.plot(base$Tratamiento,base$Bloque,base$Temperatura,
xlab = "Tratamientos",ylab ="Temperatura",col=1:5)

