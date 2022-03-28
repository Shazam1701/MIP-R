####### Capitulo 5: Creacion de funciones

#En esta seccion unicamente se encuentran los codigos que se utilizan como 
#ejemplos y ejercicios dentro del manual. La informacion completa respecto 
#a cada capitulo y su contenido se encuentra en el archivo PDF.

#El desarrollo del manual se realizo en el sistema de composición de textos:
#LaTeX

##### #Creacion de la funcion

salario<-function(nivel,edad){
  if(nivel==1){
    sal=5000+150*edad
  } else if(nivel==2){
    sal=5000+180*edad
  } else if(nivel==3){
    sal=6000+120*edad
  } else{
    cat("Nivrl invalido","\n")
  }
  return(sal)
}

## Uso de la funcion

salario(1,18)
salario(2,25)
salario(3,32)
salario(4,28)


### 5.1.1 Dentro de la funcion

proba1<-function(aciertos, ensayos){
  if(aciertos>ensayos | ensayos==0){
    cat("Inserte parametros coherentes","\n")
  }else{
    y<-(aciertos/ensayos)
    return(y)
  }
}

#Usnado la funcion
proba1(3,5)
proba1(11231,5432154235)
proba1(21,0)
proba1(1,1)
proba1(10,8)
#Verificando las vvariables dentro de la funcion
aciertos
ensayos
y


#Declaracion por fuera de la fucnion
aciertos<-10
ensayos<-17
y<-3
proba1(3,8)
aciertos
ensayos
y

#5.2.1 Agrumento fuera de la funcion 
int_comp<-function(interes,periodos){
  if(interes==0 | periodos==0){
    cat("Los parametros podrian dar resultados inesperados","\n")
  }else{
    y<-capital*((1+interes)^periodos)
    return(y)
  }
}

#Uso de la funcion

# valor definido previamente
capital<-1200
int_comp(.45,15)
#Sin valor previamente definido
rm("capital")
int_comp(.45,15)


#Ausencia de argumentos

#Valor por default
ejem_def<-function(x=5){
  return(x)
}

#Uso
ejem_def(3)
ejem_def()


#Funcion formals
formals(int_comp)

########## 5.3 Programacion basada en vectores

#5.3.1 Apply

#Funcion Apply
(A<-matrix(rep(1:4),3,4))

#Media sobre filas
(B<-apply(A,1,mean))

#Media sobre coulmnas
(B<-apply(A,2,mean))

#Obtenemos el mismo resultado pero con mas lineas de codigo

#Media sobre filas
mean(A[1,]);mean(A[2,]);mean(A[3,])

#Medias sobre columnas
mean(A[,1]);mean(A[,2]);mean(A[,3]);mean(A[,4])


### 5.3.2 Lapply

#Funcion Lapply
A<-matrix(rep(1:4),3,4)
B<-matrix(c(1:8),4,4)
C<-matrix(seq(1,3,.5),3,5)

lista<-list(A,B,C)

#Suma
lapply(lista,sum)

#Raiz Cuadrada
lapply(lista,sqrt)

### 5.3.2 Tapply

#Aplicamos la funcion Tapply
x<-seq(1,40,2)
x

y<-factor(rep(letters[1:5],each=4))
y

#Aplicando funcion tapply con media
tapply(x,y,mean)

#Obtenemos el mismo resultado pero con mas lineas de codigo
(a1<-mean(x[1:4]))
(b1<-mean(x[5:8]))
(c1<-mean(x[9:12]))
(d1<-mean(x[13:16]))
(e1<-mean(x[17:20]))

### 5.3.5 Mapply

#Funcion Mapply
options(digits=4)

(x<-rep(3,5))
(y<-seq(1,10,2))
(z<-sqrt(y))

mapply(prod,x,y)

mapply(sum,z,y,z)


### 5.4.1 Ejemplo: sucesion de Fibonacci

#Creamos la funcion
fibonacci<-function(n){
  v<-rep(0,n)
  if(n==1){
    x=0
  } else if(n==2){
    x=1
  }else{
    x=fibonacci(n-1)+fibonacci(n-2)
  }
  return(x)
}

#Uso de la funcion
fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(6)


#Ejemplo: Operador Factorial
factorial<-function(n){
  if(n==0){
    f=1
  }else{
    f=n*factorial(n-1)
  }
  return(f)
}

#Uso del operador
factorial(1)
factorial(2)
factorial(3)
factorial(4)
factorial(5)


### 5.5.1 Funcion stop

#Probabilidad con error
proba2<-function(aciertos,ensayos){
  if(aciertos>ensayos){
    stop("Teoricamente no hay probabilidades mayores a 1",call.=T)
  }else if(aciertos<0 | ensayos<0){
    stop("¿En que demonios estas pensando?",call.=F)
  }else{
    y<-(aciertos/ensayos)
  }
  return(y)
}

#Uso de la funcion
proba2(12,10)
proba2(-2,6)


### 5.5.2 Funcion Browser

#Suma de numeros aleatorios
random.sum<-function(n){
  browser()
  x[1:n]<-ceiling(10*runif(n))
  cat("x:",x[1:n],"\n")
  return(sum(x))
}

#Uso de la funcion
random.sum(4)
