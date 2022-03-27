####### Capitulo 2: Operadores y funciones básicas

#En esta seccion unicamente se encuentran los codigos que se utilizan como 
#ejemplos y ejercicios dentro del manual. La informacion completa respecto 
#a cada capitulo y su contenido se encuentra en el archivo PDF.

#El desarrollo del manual se realizo en el sistema de composición de textos:
#LaTeX

##### 2.1 Operaciones Aritmeticas

#Suma
17+18
#Resta
25-20
#Multiplicacion
24*5*2
#Division
30/7
#Potencia
4^3
#Modulo : Regresa el resto de la division
25%%4
20%%3
#Division de numeros enteros : Regresa el cociente de la division
25%/%4
20%/%3

##Ejemplo de Jerarquizacion de Operaciones:
3*2^(2+1*(2*2))


##### 2.2 Funciones predefinidas y Caracteres especiales

#Por default R hace uso de 6 decimales
pi
exp(1)
(1+5^(1/2))/2
sin(2.34)
#Cambiamos al numero de decimales deseados
options(digits=17)
pi
exp(1)
options(digits=3)
(1+5^(1/2))/2
sin(2.34)

## Redondeo hacia abajo
floor(pi)
floor(exp(1))
floor(15/2)
##  Redondeo hacia arriba
ceiling(pi)
ceiling(exp(1))
ceiling(15/2)


##### 2.3 Variables

## Asignacion de valores y las diferentes formas de mostrar su valor
#
a<-5
show(a)
#
b<-12
print(b)
#
(c<-10)
#
d<-25
d
## Cambio de valores
#
a*b
#
(a);(b)
#
(x<-b/12)
#
b
b<-100
#
print(c)
c<-a*b
c
## Asignacion de valores usando la misma variable
x<-10
y<-5
z<-x+y
#
z
z<-2*z
z

##### 2.4 Funciones

## Construccion de vectores apartir de funciones

#Los parametros se separan con comas .
#Indican el inicio , el fin y cada cuanto avanza la secuencia
seq( from =2 , to =15 , by =2)

#Si omitimos el parametro by , el valor por default de  avance es 1
seq( from =2 , to =15)

#Podemos omitir el nombre de los parametros y continuar siempre y cuando esten 
#escritos en el orden correcto
seq (2 , 15 , 2)

#Tambien podemos desordenar el nombre de los parametros
#pero se tiene que indicar el nombre del parametro al que le asignaremos 
#un valor
seq(by =3 , from =5 , to =20)

#Podemos crear un vector con una secuencia regresiva con un valor negativo en 
#el parametro by
seq (12 ,2 , -2)

#Asigna el valor de la secuencia de manera correcta
x<-seq (1 ,5)
#No aplica la funcion de manera correcta
y<-meanx
# Si aplica la funcion de manera corrrecra
y<-mean(x)
print(y)

#Comando help
?mean



##### 2.5 Vectores


## Funciones Vectoriales


# Funcion seq: crea una secuencia de valores segun los parametros
seq (1 ,12 ,2)
# Funcion rep : crea un vector con valores repetidos segun se indique
#en los parametros
rep(x =17,times =7)
rep (3 ,2)

#Se puede indicar una secuencia de valores y mandarla a repetir
rep (1:3 ,4)
# Funcion c : crea un vector con los valores indicados , generalmente
# no se hace uso de sus parametros
c(1 ,2 ,3 ,4)
c(11 ,6 ,3 ,125 ,53)
#Se puede invertir el orden de la secuencia
c (8:3)
#Es posible mandar diferentes secuencias separadas por comas
c(1:5 ,30:34)
#Podemos introducir variables de tipo caracter
c("verde","azul","amarillo")
#Se debe ser cuidados si pretendemos combinar valores numericos con caracteres
#pues el vector manejara todos los valores como caracteres
c("a","b",as.numeric (1:5))

# Ejemplo :

#Asignamos el nombre ''xy ' ' al vector
xy <-c("a","b",as.numeric (1:5) )
#Asginamos el nombre a la variable "no_ numero " con el valor del vector xy en 
#su posicion
no_numero<-xy[4]
#Comprobamos su valor
no_numero

#Aqui podemos ver que R lo maneja como un valor no numerico
2+no_numero


#Si se deseara cambiar el valor de los numericos se tendria que hacer 
#lo siguiente :

#Asginamos el nombre a la variable " numero " con el valor del vector xy 
#en su posicion
numero<-as.numeric(xy[4])
#Comprobamos su valor
numero
#Despues de usar la funci´on as. numeric () ahora R lo maneja como un valor
#numerico
2+numero



#Creamos un vector con valores deseados
(x<-c(10:15))
#Creamos un segundo vector , con valores para i
(i<-c(1:3))
#Y un tercero con valores negativos
(j<-c(-3:-1))
#Llamamos al vector x en las posiciones de j e i
(x[i])
#El vector en x en las posiciones del vector i con valores positivos
#nos devuelve los valores en las respectivas posiciones
(x[j])
#El vector en x en las posiciones del vector j con valores negativos
#omite los valores en las respectivas posiciones

  
### Ejemplos:
  
(x<-seq(7,24,3))
(y<-c(2,4,6,7,9,11))
#Observe como las operaciones se realizan elemento a elemento
(x+y)
(x-y)
(x*y)
options(digits=3)
(x/y)
(x^y)
#Vectores con diferente longitud
(a<-c(5:10))
(b<-rep(3,3))
#Comprobamos la longitud
length ( a )
length ( b )
#Realizamos operaciones
(a+b)
(a*b)
#Usaremos los vectores definidos en el ejemplo anteior
sum(a)
sum(b)
sqrt(b)
max(a)
min(a*b)
(c<-c(5:8,-2:0))
sort(c)
mean(a)
var(b)


### 2.5.1 Operaciones simples con vectores no definidos

x<-cos(x)
x
y<-sin(x)
y
sum((x^2)*(y^2))



##### 2.6 Valores perdidos, omitidos y no definidos

x<-rep(2,5)
y<-x*a

# Evaluamos si las posiciones del vector son valores omitidos
is.na(x)
is.null(x)
# Evaluamos si al menos uno de ellos es un valor omitido
any(is.na(x))
any(is.null(x))
#Si un vector contiene un valor na , sus calculos no pueden
# ser realizados de manera estandar
y<-c(1:5,NA,3:5)
y
mean(y)
sum(y)
#Modificamos uno de sus parametros para realizar la accion
mean(y,na.rm=TRUE)
sum(y,na.rm=T)



##### 2.7 Expresiones y Asignaciones


#Ejemplos de expresiones

seq(10,20,3)
mean(c(1,2,3))


#Asignacion
w<-seq(10,20,3)
x<-4
y<-mean(c(1,2,3))


##### 2.8 Expresiones Logicas

# Definimos 2 variables con valores booleanos
(x<-c(1,1,1,0,0,1,0,0,1,0))
(y<-rep(c(1,0),5))
# | devuelve TRUE si uno de los datos es TRUE o 1
x[2]|y[2]
# & devuelve TRUE solo si ambos datos son TRUE o 1
x[3]&y[3]
# xor devuelve TRUE solo si uno y solo uno de los datos es TRUE o 1
xor(x[6],y[6])
# | devuelve FALSE si todos los datos son FALSE o 0
x[10]|y[8]
# & devuelve FALSE si alguno de ambos datos es FALSE o 0
x[6]&y[4]
# xor devuelve FALSE si ambos datos son TRUE o FALSE
xor(x[1],y[1])
#Es posible evaluar todos los datos con una solo ejecucion
x|y
x&y
xor(x,y)
(x==y)
(x!=y)

#Function which
x<-c(1,2,3,5,12,4,20)
which(x%%2==0)

# Comprobamos cuales son los valores que cumplen la condicion
x[2];x[5];x[6];x[7]



##### 2.9 Matrices

#Matriz
B<-matrix(3:6,3,4,FALSE)
#
B<-matrix(3:15,2,3,T)
#
B<-matrix(3:8,2,3)
dim(B)
#
C <-diag(c(10,1,4))
#
(A<-matrix(10:20,3,4))
(B<-matrix(1:5,3,4))

#Unir matrices por fila
rbind(A,B)
#unir matrices por columna
cbind(A,B)
#
(A[1,1] <-0)
(M <-matrix(1:4,2,2))
(N <-matrix(5:8,2,2))
#Producto Elemento a elemento
M*N
#Producto matricial
M%*%N
#Determinante
det(M)

#Transpuesta
t(M)
#Funcion solve
solve(M)
solve(M,N)
#
N<-as.vector(M)
N

#### 2.10 El entorno

#Listado de elementos
ls()
objects()
#Eliminar todos los elementos
rm(list=ls())










