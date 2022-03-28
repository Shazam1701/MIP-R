####### Capitulo 7: Graficos Avanzados

#En esta seccion unicamente se encuentran los codigos que se utilizan como 
#ejemplos y ejercicios dentro del manual. La informacion completa respecto 
#a cada capitulo y su contenido se encuentra en el archivo PDF.

#El desarrollo del manual se realizo en el sistema de composición de textos:
#LaTeX

### 7.1 Parametros de las graficas

#Grafica 1
windows()
#Asignamos el numero de filas y columnas
par(mfrow=c(1,2))
#Cambios de parametros
par(bty="u",las=0)
x<-c(1:10)
y<-seq(2,20,2)
plot(x,y,xlab="Eje X",ylab="Eje Y", col="dodgerblue4", type="c", main="Grafica2")

#Agregando una nueva grafica
windows()
a<-c(-2:12)
b<-seq(0,42,3)
par(mar=c(3,3,2,2),las=1)
plot(a,b,col="green4",type="1",main="Puntos")

#Sobreponiendo graficas
d<-c(2,5,8,12,13,17,23,27,30,31,32,36)
plot(d,col="mediumvioletred")

### 7.2 Topografia Matematica

curve(25*(x^3-x^-x)+17,0,1,xlab = expression(alpha), 
      ylab=expression(25%*%(alpha^3-alpha^2-alpha)+17), 
      main=expression(paste("Funcion: ", omega==25%*%(alpha^3-alpha^2-alpha)+17)) )


### 7.3 Grafico 3d

#plot 3d
#Definimos x e y
x<-seq(2,5,.2)
y<-seq(3,6,.2)

#Definimos la funcion para nuestra tercer variable
f<-function(a,b){a^2-b^2}
z<-outer(x,y,f)
#Hacemos unos de la funcion persp
persp(x,y,z,phi=1,theta=32,col="red",main="Hiperbola",col.main="darkblue")

##Graficas que simulan movimiento
x11()
par(bg="lightblue")
for(i in 1:1000){
  persp(x,y,z,phi=i/4,theta=i/4,col=rainbow(i),
        shade=.5, xlab="X", ylab="Y",zlab="Z")
  title(main="Hiperbola",sub=expression(paste("Funcion: ",x^2-y^2))) 
}
