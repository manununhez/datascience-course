v = c() #creamos vector
nu = c(0.5, 0.6)  #vector
l1 = c(FALSE, FALSE, TRUE)
l2 = c(T, F)
ch = c('a')
it = 9:29
co = c(1+0i,2+4i)


v = vector('numeric', length = 10) #otra forma para crear vectores. Vector de 10 columnas llenas de cero (1x10)
v[1] = 5

v #auto-impresion

print (v) #impresion explicita

y = c(1.7, 'a') #character    
y #tanto 1.7 y a son caracteres -> "1.7" y "a". Siempre debe tener el mismo tipo, entonces R convierte a caracteres



y = c(FALSE, 2) #numeric
y #convirtio a numerico. 1, 2. Son numericos, no tienen comillas.   FALSE = 0, TRUE = 1


y = c('a', TRUE)#convierte el logico a caracter. R no sabe a que valor corresponde 'a'.
y


####
#coecion o conversion explicita
#####
x = 0:6
class(x) #con class averiguamos la clase de un objeto

x = as.numeric(x)

x = as.character(x)

x = as.logical(x) # todo lo mayor a cero, es TRUE. FALSE  = 0

#matrices
m = matrix(1:6 , nrow = 2, ncol = 3) #la matriz en R se crea por COLUMNAS!!!
m[1,]
m[,2]


x = 1:3
y = 10:12
z = cbind(x,y) #se acopla por columna
z = rbind(x,y) #se acopla por fila

#listas
x = list(1,"a", TRUE, 1 + 4i) #crea un array de arrays(de una dimension), donde cada subarray tiene el elemento de tipos distintos
x[1] #accedemos al primer vector
x[[1]]#accedemos al primer elemento del primer vector

#factor
x = factor(c('yes','yes','no','yes','no'))
table(x) #cuantas ocurrencias de cada categoria

x = factor(c('yes','yes','no','yes','no'), levels = c('yes','no')) #variable ordinal (con orden)


x = c(1,2,NA,10,3)
is.na(x)

x = factor(x)


#Data Frame
#No es lo mismo que matriz, porque puede tener valores de distintos tipos. La matriz tiene todo de un solo tipo. Nombre de las columnas y registros, solo data frame
#TABLAS

x = data.frame(c1=c(1:5), c2=c(T, T, F, F, T), c3=c('a','b','c','d','e'))

nrow(x) #numero de filas del dataframe
ncol(x) #numero de columnas

names(x) #nombre de las columnas del data frame

#IF

x = 2
y = 0

if(x > 3){
  y = 10
}else{
  y = 50
}

if(x == 2){
  print('Este valor es 2')
}


#for
x = data.frame(c1 = 4:6, c2 = 18:20)
for(i in seq_len(nrow(x))){ #imprimimos todos los elementos del data frame (por fila)
  print(x[i,'c1']) #imprimos el valor de la primera columna (nombre)
  print(x[i,2]) #imprimimos el valor de la segunda columna (numero)
}

for(i in seq_len(ncol(x))){ #imprimimos todos los elementos del data frame (por columna)
  print(x[1, i]) #imprimos el valor de la primera fila (nombre)
  print(x[2,i]) #imprimimos el valor de la segunda fila (numero)
}

########11-21-17
#apply
x = data.frame(c1 = 1:3, c2 = 10:12); x
apply(x, 2, median)  # apply(<objeto>, <fila (1) o columna (2)>, <funcion>)

#funciones con apply
mult = function(x, c) {
  return (x*c)
}
apply(x, 2, mult, 5)  # apply(<objeto>, <fila (1) o columna (2)>, <funcion>, <parametro>)

area_circulo = function(r) {
  return (3.14*r^2)
}
area_circulo = function(r,p) {
  return (p*r^2)
}
sapply(x[,'c1'], area_circulo) #solo los elementos de la primera columna


#Files management
data = read.csv(file = '../proyecto/data/becal-cobertura.csv', header = T, stringsAsFactors = F)
write.csv(x, 'leccion4.csv', row.names=F)


#Graphics
library(datasets) #datasets in R
autos = mtcars
hist(autos$mpg, col='green', main='Distribución de las millas por galón', 
     +      xlab='Millas x galón', ylab='Frecuencia') #en este ejemplo, la distribucion no es normal, es decir, los autos en este dataset consumen relativamente poco combustible

boxplot(autos$hp, col='red', main='Distribución de caballos de fuerza', 
        ylab='Caballos de fuerza') #si la barra dentro del rectangulo rojo esta en el medio, la distribucion es normal. En este ejemplo no es normal.

barplot(table(autos$am), col='green', xlab='Tipo de transmisión',
        main='Nro. de vehículos por tipo de transmisión') #table(autos$am) cuenta la frecuencia de los tipos automaticos o no.

plot(presidents$start, ylab = 'Porcentage de aprobación (%)', xlab='Año',
     main = 'Aprobación (1er cuatrimestre) Presidentes de EEUU')

plot(autos$mpg, autos$wt, col='blue', xlab='Millas por galón', ylab='Peso (libras)',
     main='Relación entre peso del vehículo y millas recorridas por galón') #los vehiculos mas pesados, consumen mas combustible


#Particion
x = data.frame('var1'=sample(1:3),'var2'=sample(6:8),'var3'=sample(11:13)) #sample toma los valores dentro del rango definido, pero no utiliza siempre el mismo orden
#select data frame: (specific value, range, vector, logic expresions)
x[x$var1 < 5 & x$var2 > 10,] #and
x[x$var1 < 5 | x$var2 > 10,] #or
x[x$apellido == 'gonzalez',] #equal

#ordenamiento
sort(x$var1) #ascendente
sort(x$var2, decreasing = T) #descendente



#BECAL
becal = read.csv(file = '../proyecto/data/becal2017.csv', header = T, stringsAsFactors = F)
becal[1:5,'Sexo'] #seleccionar el sexo de los primeros 5 registros
tolower(becal[,'Sexo'])[1:5] #convertir en minuscula los valores de la columna sexo, y solo mostrar como resultado los primeros 5 resultados
becal$Sexo = tolower(becal[,'Sexo']) #asignar forma 1
becal[,'Sexo'] = tolower(becal[,'Sexo']) #asignar forma 2