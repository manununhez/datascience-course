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
hist(autos$mpg, col='green', main='Distribuci?n de las millas por gal?n', 
     +      xlab='Millas x gal?n', ylab='Frecuencia') #en este ejemplo, la distribucion no es normal, es decir, los autos en este dataset consumen relativamente poco combustible

boxplot(autos$hp, col='red', main='Distribuci?n de caballos de fuerza', 
        ylab='Caballos de fuerza') #si la barra dentro del rectangulo rojo esta en el medio, la distribucion es normal. En este ejemplo no es normal.

barplot(table(autos$am), col='green', xlab='Tipo de transmisi?n',
        main='Nro. de veh?culos por tipo de transmisi?n') #table(autos$am) cuenta la frecuencia de los tipos automaticos o no.

plot(presidents$start, ylab = 'Porcentage de aprobaci?n (%)', xlab='A?o',
     main = 'Aprobaci?n (1er cuatrimestre) Presidentes de EEUU')

plot(autos$mpg, autos$wt, col='blue', xlab='Millas por gal?n', ylab='Peso (libras)',
     main='Relaci?n entre peso del veh?culo y millas recorridas por gal?n') #los vehiculos mas pesados, consumen mas combustible


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
becal = read.csv(file = '../proyecto/data/becal2017.csv', header = T, stringsAsFactors = F, fileEncoding = "utf-8")

becal_c = read.csv(file = '../proyecto/data/becal-cobertura.csv', header = T, stringsAsFactors = F, fileEncoding = "utf-8", strip.white = TRUE)


becal[1:5,'Sexo'] #seleccionar el sexo de los primeros 5 registros
tolower(becal[,'Sexo'])[1:5] #convertir en minuscula los valores de la columna sexo, y solo mostrar como resultado los primeros 5 resultados
becal$Sexo = tolower(becal[,'Sexo']) #asignar forma 1
becal[,'Sexo'] = tolower(becal[,'Sexo']) #asignar forma 2

becal[1:2,'Fecha.firma.de.Contrato']
as.character(becal[1:5,'Fecha firma de Contrato'])
strsplit(as.character(becal[1:5,'Fecha firma de Contrato']), '/')
strsplit(becal[1:2,'Fecha firma de Contrato'],"/")

str(becal[1:2,'Fecha firma de Contrato'])

becal[1:2,'C.I.']
gsub(',', '', becal[,'C.I.'])[1:2]   # eliminar (o remplazar por vacio) las comas del texto c?dula
becal$C.I. <- gsub(',', '', becal[,'C.I.'])


becal[1:2,'Fecha.firma.de.Contrato']
strsplit(becal[1:2,'Fecha.firma.de.Contrato'], '/')  # divir el texto de fecha utilizando la barra como separ

becal[1:2,'C.I.']
gsub(',', '', becal[,'C.I.'])[1:2]   # eliminar (o remplazar por vacio) las comas del texto c?dula


becal_c[c(1,210,843),'Total.General']
grep('???',becal_c[c(1,210,211, 843),'Total.General'])  # buscar la presenciar de caracter euro
grepl('???',becal_c[c(1,210,843),'Total.General'])  # buscar la presenciar de caracter euro


library(stringr)
becal[1:2,'Condici?n']
str_trim(becal[1:2,'Condici?n'])  # eliminar espacios vac?o al inicio y final del texto
str_trim(becal_c[c(1,210,843),'Total.General'])  # eliminar espacios vac?o al inicio y final del texto 
# (NO FUNCIONA ACA porQUE STR_TRIM SOLO TE ELIMINA LOS ESPACIoS REDUNDANTES AL COMIENZO Y AL FINAL. SE deberia hacer una expresion regular para quitar los espacios en medio)

becal_c[1,'Universidad.de.Destino']
nchar(becal_c[1,'Universidad.de.Destino'])  # contar el n?mero de caracteres del texto
substr(becal_c[1,'Universidad.de.Destino'],16,20)  # extraer parte del texto

becal_c[1,c(5,6)]
paste0(becal_c[1,5],' (',becal_c[1,6],')')


#merge
becal$C.I.<- str_trim(gsub(',', '', becal[,'C.I.'])) #quitar comas
becal$C.I.<- str_trim(gsub('\\.', '', becal[,'C.I.'])) #quitar puntos

becal_c$C.I.<- str_trim(gsub(',', '', becal_c[,'C.I.'])) #quitar comas
becal_c$C.I.<- str_trim(gsub('\\.', '', becal_c[,'C.I.'])) #quitar puntos

ambos_becal = merge(becal, becal_c, by.x="C.I.", by.y="C.I.", all.y=TRUE) #all.y porque los que estan en bacal2017 no todos recibieron la beca. En becal_cobertura si recibieron las becas. 
#VERIFICAR -- EL MERGE SOLO TIENE 907 filas x 44 columnas


#Dplyr
library(dplyr)
select(becal, C.I., Sexo, Edad) #Select columns
head(select(becal, C.I., Sexo, Edad))  # head sirve para mostrar las primeras n filas del dataframe

dataset_filtrado = filter(becal, Sexo=='Femenino')

dataset_ordenado = arrange(becal, Edad)
dataset_ordenado_desc = arrange(becal, desc(Edad))
head(select(dataset_ordenado, C.I., Sexo, Edad))

#rename
becal_renombrado = rename(becal, ci = C.I., sexo = Sexo, edad = Edad)
head(select(dataset_ordenado_desc, C.I., Sexo, Edad)) 

#mutate
becal_gs = mutate(becal_c, total_gs=5500*convertir_totalgeneral(Total.General))
head(select(becal_gs, Total.General, total_gs), 5)


#5/12/17 analisis exploratorio
hist(as.numeric(becal17$edad), main=paste("Distribución de becarios por edad (n=",nrow(becal17),")"), 
     ylab="Frecuencia", xlab="Edad", col = "red")

hist(as.numeric(becal17$edad), main=paste("Distribución de becarios por edad (n=",nrow(becal17),")"), 
     ylab="Frecuencia", xlab="Edad", col = "red", xlim = c(20, 40))

summary(as.numeric(becal17$edad)) #min, max, media, mean

quantile(as.numeric(becal17$edad)) #para variables numericas

quantile(as.numeric(becal17$edad), probs = c(0.40, 0.65, 0.90)) #valores especificos de quantiles

quantile(as.numeric(becal17$edad), probs = c(0.40, 0.65, 0.90), na.rm = TRUE) #na.rm elimina NA

boxplot(as.numeric(becal17$edad), col='red', main='Distribución de edad de becarios', 
        ylab='Edad')

var(becal17$edad) #varianza para variables numericas

sd(becal17$edad)#standard deviation para variables numericas

table(becal17$sexo) #para variables categoricas

barplot(table(becal17$universidaddedestino),
        main=paste("Becarios por rango de ranking de universidad (n=",nrow(becal17),")"), 
        ylab="Total", xlab="Rango de ranking", col="blue", las = 2)

#limpieza del grafico ##
becal_limpio = subset(becal_completo, categoriauni != "sin dato") # elimina los registros "sin dato"
dis_categoriauni = table(droplevels(as.factor(becal_limpio$categoriauni)))
categoria_ordenadas = sort(dis_categoriauni, decreasing = T)  # ordena las categorias de mayor a menor
barplot(categoria_ordenadas, main=paste("Becarios por rango de ranking de universidad (n=",
                                        nrow(becal_limpio),")"), ylab="Total", xlab="Rango de ranking", col="blue")

library(stringi)
library(dplyr)
library(stringr)
source('utils.R')
becal17$paisdedestino = limpiar_nombres(becal17$paisdedestino)
dis_pais_destino = table(droplevels(as.factor(becal17$paisdedestino)))
categoria_ordenadas = sort(dis_pais_destino, decreasing = T)  # ordena las categorias de mayor a menor
barplot(categoria_ordenadas, main=paste("Becarios por rango de ranking de universidad (n=",
                                        nrow(becal17),")"), ylab="Total", xlab="Rango de ranking", col="blue", las = 2)

### Scatter Plots, grafico de puntos - Relaciones entre dos variables numericas!!!!

plot(becal_completo$mesesdeduraciondeestudios, becal_completo$totalgralusd, 
     ylab="Costo Total en USD", xlab="Duración Estudio en Meses",
     main="Meses de Duración por Costo de Estudio")

#promedios condicionales - PARA SOLUCIONAR OVERPLOTTING
groupo_meses = group_by(becal_completo, mesesdeduraciondeestudios)
total_x_gm = summarize(groupo_meses, 
                       total_mean = mean(totalgralusd))
plot(total_x_gm$mesesdeduraciondeestudios, total_x_gm$total_mean, 
     ylab="Costo Total Promedio en USD", xlab="Duración Estudio en Meses",
     main="Meses de Duración por Costo de Estudio")


#Relaciones entre dos variables: cateogircas y numericas:::: BOXplots


#correlaciones
becal_sin_na = filter(becal_completo, totalgralusd != 'NA')  # elimino los valores ausentes
cor(as.numeric(becal_sin_na$mesesdeduraciondeestudios), becal_sin_na$totalgralusd) #estas dos variables estan fuermente relaciones. 
#Mientras mas largo el estudio, es mas costoso. 

#Pero no se puede decir que es una relacion de causalidad, pueden haber mas factores. 
#Correlacion no implica causalidad.