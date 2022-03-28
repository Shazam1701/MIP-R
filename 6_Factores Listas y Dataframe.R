####### Capitulo 6: Factores, Listas y Dataframe

#En esta seccion unicamente se encuentran los codigos que se utilizan como 
#ejemplos y ejercicios dentro del manual. La informacion completa respecto 
#a cada capitulo y su contenido se encuentra en el archivo PDF.

#El desarrollo del manual se realizo en el sistema de composición de textos:
#LaTeX

### 6.1 Factores



#Declaramos el vector helado
helado<-c("chocolate","fresa","vainilla","chocolate","fresa","chocolate",
          "vainilla","chocolate","vainilla","fresa","fresa", "vainilla",
          "chocolate","chocolate","fresa")
#Aplicamos la funcion factor
helado<-factor(helado, ordered = T)
#comprobamos
is.ordered(helado)
table(helado)

#Factor Ordenado
helado<-factor(helado, ordered = T)
helado

#Factor no Ordenado
helado<-factor(helado, ordered = F)
helado

#Cambiamos el nombre de los niveles
sabores<-factor(helado,levels=c("chocolate","fresa","vainilla"),
                labels=c("CH","FR","VA"),ordered=FALSE)

table(addNA(sabores))

#Aplicamos la funcion factor
helado<-factor(helado, ordered = T)
#Declaramos las variables que nos interesan
table(helado[helado=="chocolate"| helado=="vainilla", drop=T])

#Declaramos el vector de apellidos
apel<-c("Carrillo","Alvaro","Carreto","Martinez","Valdez")
#Aplicamos la funcion factor
apel<-factor(apel)
apel
#Recuperamos de manera correcta los valores
(as.character(apel))
#No recuperamos de manera correcta los valores
as.numeric(apel)
#Agrega valores al vector numerico basado
c(apel,5,6)

#Si el vector es numerico
edad<-factor(c("17","18","19","20"))
#Se recupera el factor
as.numeric(levels(edad))
#No se recupera
as.character(levels(edad))

#Solo nos regresa el orden
as.numeric(edad) 



### 6.2 Dataframe

#Usamos la base mpg
mpg
# Head permite ver los primeros datos del dataframe
head(mpg)
# Tail permite ver los ultimos datos del dataframe
tail(mpg)
#comprobamos que sea un data frame
is.data.frame(mpg)

#Diferentes formas de determianr un valor
mpg[[2]]
mpg[["model"]]
mpg$model
##
a<-mpg[[2]]
b<-mpg[2]
mode(a)
mode(b)

#Podemos obtener el nombre de nuestras columnas
names(mpg)

#Y cambiarlos tambien
mpg1<-mpg
names(mpg1)<-c("c1","c2","c3","c4","c5","c6","c7","c8","c9",
               "c10","c11")
names(mpg1)


#Seleccion de columnas
pol_mont<-mpg[c(1,4,5)]
#Extraccion de un numero especifico
pol_mont[12:16,]
#Comprobamos si el nuevo elemento es de nuevo un data frame
is.data.frame(pol_mont)

### 6.2.1 Ejemplo: subset
d1<-subset(mpg,subset = year >2000,select=c(manufacturer,model,class) )
#obtenemos los primeros 7 valores
head(d1,n=7)
#obtenemos un resumen
summary(d1)


### 6.3 Listas


#Ejemplo: vectores de diferente tipo

a<-c(1:5)
b<-"singular"
c<-TRUE
d<-c("H","M")
e<-c()
f<-list(a,e)

#Creamos una lista a usar
lista<-list(b,c,d,f)
lista[[1]]
lista[[3]][1]
lista[3]
lista[[3]]

#Asignacion de nombres
names(lista)
#Pero se pueden asignar
names(lista)<-c("variable","logica","ordinal","lista")
names(lista)
lista[3]

#Funcion unlist
lista
#comparamos la funcion con el argumento recursvie intercambiado
(lista2<-unlist(lista,recursive=T))
(lista3<-unlist(lista,recursive=F))

#Y comparamos que tipo de vairable es la que obtenemos
class(lista2);class(lista3)

#Resumen de las listas con str

calificaciones<-list("1 semestre"=c(8,8,7,6,9,9),
                     "2 semestre"=c(6,9,8,9,6,7),
                     "3 semestre"=c(10,9,8,9,7,8),
                     "4 semestre"=c(9,9,7,8,7,8),
                     "5 semestre"=c(10,10,8,7,7,8))

str(calificaciones)
