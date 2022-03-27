####### Capitulo 4: El manejo del texto y graficas sencillas

#En esta seccion unicamente se encuentran los codigos que se utilizan como 
#ejemplos y ejercicios dentro del manual. La informacion completa respecto 
#a cada capitulo y su contenido se encuentra en el archivo PDF.

#El desarrollo del manual se realizo en el sistema de composición de textos:
#LaTeX

##### 4.1.1 Ejemplo: funcion paste

x1<-"Calculo Integral"
x2<-"Algebra Superior"
x3<-"Geometria Analitica"
x4<-"Historia Contemporanea"
x5<-"Programacion"

materias<-paste(x1,x2,x3,x4,x5,sep=", ")
materias

#Valor por defecto en paste
materias2<-paste(x1,x2,x3,x4,x5)
materias2

#
cantidad<-50
tipo<-"automoviles"
marca<-"BMW"
(resultado<-paste(cantidad,tipo,marca))


##### 4.1.2 Cambio del tipo de variable

(numeros<-c(1,2,3,4,5))

(caracteres<-c("1","2","3","4","5"))

(nu2<-as.character(numeros))

(le2<-as.numeric(caracteres))



### 4.2.1 ejemplo: funcion format

x<-c(1:10)
cat(paste(format(1:n,width =5, justify = "right"),
          format(3*x+2,width=7,justify="right"), "\n"),
    sep=" ")


### 4.3.1 ejemplo: funcion scan

setwd ( " C :/ Users / narum / Documents /R " )
nombres<-scan("datos1.txt",
              what=list(character(10),numeric(3)),n=-1,skip=0,quiet=F)

nombres


### 4.3.2 ejemplo: funcion scan con entrada manual

n<-5
v<-rep(0,n)
for(i in 1:n){
  cat("Introduzca el valor numero",i,"para el vector")
  v[i]<-scan()
  if(i==n){
    print(v)
  }
}


#
cat("Introduzca los valores deseados para la matriz");v <-scan ();

(v2<-matrix(v,3,4))


### 4.3.3 ejemplo: funcion readline

cat("Introduzca el numero x de filas 
    y el numero y de columnas para su matriz");x<-as.numeric(readline("x="));y<-as.numeric(readline("y=")) 
#Creacion de la matriz
a<-rep(0,(x*y))
for(i in 1:length(a)){
  cat("Introduzca un numero")
  a[i]<-as.numeric(readline("numero= "))
}

#Matriz
A<-matrix(a,x,y)
show(A)

### 4.4.1 Ejemplo: funcion write

n<-8
x<-c(0,n);z<-c(0,n)
for (i in 1:n) {
  x[i]<-167390+i
  z[i]<-7+(.1*i)
}

y<-rep("Promedio",8)
A<-paste(format(x,width=3,justify="right"),
         format(z,width=3,justify="right"),
         format(y,width=3,justify="right"), sep="")

# Escribimos la direccion a donde lo vamos a mandar
setwd("C:/User/Documents/R")
write(A,"fun_write.txt",1)

#Funcion write.table

x<-c(1:12)
y<-c(1.2,2.1,1.5,3.2,.8,1.8,1.5,1.5,1.1,2.5,2.3,2.8)
z<-c(12,11,16,19,9,12,16,11,17,12,12,16)
(B<-matrix(c(x,y,z),ncol=3,nrow=12))

write.table(B,"fun_writetable.csv",sep=" ,")




### 4.5 Graficas Sencillas

x<-c(1:1)
y<-seq(2,20,2)
plot(x,y)

###
x<-(1:11)
y<-seq(1,6,.5)
plot(x,y,type="b",xlab="Eje de abscisas",
     ylab="Eje de ordenadas",main="Grafica Plot",
     col="navyblue",panel.first=grid())
abline(v=6,col="black",)
abline(h=5,col="black",)
text(6,3.5," Interseccion (6,3.5)",pos=4)
text(9,5," Interseccion (9,5)",pos=3)
text(6,5," Interseccion (6,5)",pos=1)

# Otras graficas

x<-(1:6);y<-seq(3,18,3);
a <-c(rep(3,13),rep(4,12),rep(2,16),rep(1,12),
      rep(8,13),rep(10,10),rep(5,15),rep(6,16))
ingreso<-c(rep("alto",2),rep("bajo",6),rep("medio",4))
est<-c(rep("basico",5),rep("med-bas",3),rep("med-alt",3),rep("alto",1))
tabla <-table(ingreso,est)

#Function par
par(mfrow=c(3,2))
#Grafica con plot
plot(x,y,main="Grafica sencilla",type="o")

#Histograma
hist(a,main="Histograma",col="orange",border="blue",labels=T)
#Grafico e Barras
barplot(x,y,col=c("royalblue","gray"),space=.5,
        main="Grafico de Barras", sub="Capitulo 4")
#Grafico de Bigotes
b<-c(1:12)
c<-seq(4,10,.5)

boxplot(x,y,c,d,col=c("lightblue","pink","lightgreen","violet"),
        main="Bigotes", varwidth=T, notch=F)

#Grafico de Mosaico
mosaicplot(tabla,col=c("pink","lightblue","oldlace"))
#Grafica con funcion curve
curve(x*cos(y),0,10,100, col="steelblue1")
