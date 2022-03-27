####### Capitulo 3: Estructuras de control

#En esta seccion unicamente se encuentran los codigos que se utilizan como 
#ejemplos y ejercicios dentro del manual. La informacion completa respecto 
#a cada capitulo y su contenido se encuentra en el archivo PDF.

#El desarrollo del manual se realizo en el sistema de composición de textos:
#LaTeX

##### 3.1.1

#Funcion else no anidada

a<-11
if(a%%2==0){
  print("El numero es par")
} else {
  print("El numero es impar")
}

#Funcion else no anidada

if(a%%2==0){
  print("El numero es par")
} 
else {
  print("El numero es impar")
}


### 3.1.2 Ejemplo: Comando ifelse
calificaciones <-c (8.2 ,9.1 ,6.0 ,4.8 ,9.2 ,5.2 ,5.8)
ifelse(calificaciones>=6,"Aprobado","Reprobado")


### 3.2.1 For

#Metodo 1
vector<-seq(1,5)
d<-rep(0,length(vector))

for(i in vector){
  d[i]=i*(2/3)
}

#Metodo 2
vector<-seq(1,5)
d<-c()

for(i in vector){
  d[i]=i*(2/3)
}


### 3.2.2 Comando Cat


n<-length(calificaciones)
for(i in 1:n){
  cat("La calificacion en la maeria", i, "es la siguiente:", calificaciones[i],"\n")
}



### 3.3.1 Ciclo While

meses<-0
tasa<-1.15
deuda<-500
limite<-3000

while(deuda<limite){
  deuda=deuda*tasa
  meses=meses+1
}

cat("Los meses maximo antes que se exceda el limite ", limite, "son", meses)


#2
meses<-0
tasa<-1.15
deuda<-1500
limite<-1000

while(deuda<limite){
  deuda=deuda*tasa
  meses=meses+1
}

cat("Los meses maximo antes que se exceda el limite ", limite, "son", meses)



### 3.4.1 Ejemplo: Mensaje de error
n<-4
forr(x in 1:n){
  x=2*x
}

### 3.4.2 Ejemplo: Una forma de evitar los errores

n<-10
for(i in 1:n){
  if(i<3){
    pi<-i
    cat("El valor i agregado fue:", i, "\n")
    rm("p")
  } else{
    q=i*p
    cat("El valor q agregado fue:",q,"\n")
  }
}



