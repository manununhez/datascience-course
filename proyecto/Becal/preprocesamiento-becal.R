# Cargar libraries
library(stringi)
library(dplyr)
library(stringr)
source('utils.R')

# Leer datasets
becal17 = read.csv('./data/becal2017.csv', header = T, stringsAsFactors = F, fileEncoding = "utf-8")
becal_cobertura = read.csv('./data/becal-cobertura.csv', header = T, stringsAsFactors = F, fileEncoding = "utf-8")

##########  PARTE 1 - DATASET: becal2017.csv  ###################

##
# A
# Colocar aquí el código que realice la siguiente tarea:
# Renombrar las columnas al siguiente formato: nombres en minúscula sin espacios vacíos y 
# conteniendo solo caracteres a-z sin artículos (no acentos, no ñs, no paréntesis, no /, etc.)
# Sugerencia: Utilizar funciones utilitarias de utilis.R
##
names(becal17) = sapply(names(becal17), limpiar_nombres) #aplicamos el apply y utilizamos la funcion limpiar nombres. El resultado lo actualizamos al data frame

##
# B
# Colocar aquí el código que realice la siguiente tarea:
# Renombrar las columnas llamdas 'n' de la siguiente manera: columna 1 = 'nroreg', 
# columna 3 = 'nroconv', columna 20 = 'nrorankuni', columna 22 = 'nrorankcur'
##

names(becal17)[c(1,3,20,22)] = c('nroreg','nroconv','nrorankuni','nrorankcur') #asignamos los nuevos nombres a las columnas n

##
# C
# Colocar aquí el código que realice la siguiente tarea:
# Eliminar los espacios al final de la cadena que indica la condición del becario y eliminar los registros 
# cuya condición sea 'No becario' o 'Pendiente'
##

becal17$condicion = str_trim(becal17$condicion,"right") #eliminamos los espacios al final de condicion del becario

becal17 = filter(becal17, !(becal17$condicion=='No becario') & !(becal17$condicion=='Pendiente')) #filtramos aquellos registros cuya condicion no sea 'Pendiente' ni 'No becario'

# nrow(filter(becal17, becal17$condicion=='Pendiente')) -> 16
# nrow(filter(becal17, becal17$condicion=='No becario')) -> 48
# nrow(dataset_filtrado) -> 850

##
# D
# Colocar aquí el código que realice la siguiente tarea:
# Convertir la fecha de adjudicación al formato dd/mm/yyyy
##


becal17 = filter(becal17, !(becal17$fechadeadjudicacion=='pendiente')) #eliminamos los registros cuya fecha de adjudicacion sea pendiente

becal17$fechadeadjudicacion = gsub(' de ', '-', becal17$fechadeadjudicacion) #convertirmos los 'de' de las fechas por '-'. Ej. 20 de mayo de 2015 -> 20-mayo-2015
becal17$fechadeadjudicacion = gsub(' del ', '-', becal17$fechadeadjudicacion) #convertirmos los 'del' de las fechas por '-'

becal17$fechadeadjudicacion = sapply(becal17$fechadeadjudicacion, convertir_fecha_textual) #aplicamos la funcion utils convertir_fecha_textual

##
# E
# Colocar aquí el código que realice la siguiente tarea:
# Convertir la columna cédula de identidad al tipo numérico removiendo primeramente el 
# separador de miles (coma o punto)
##

becal17$ci = gsub('\\.', '', becal17$ci)   # eliminar punto
becal17$ci = gsub('\\,', '', becal17$ci)  # remplazar coma por punto
becal17$ci = as.numeric(becal17$ci)        # convertir a tipo numerico

becal17$ci = str_trim(becal17$ci) #eliminamos espacios redundantes


##
# F
# Colocar aquí el código que realice la siguiente tarea:
# Eliminar registros sin datos en la cédula de identidad
##

# filter(becal17, is.na(becal17$ci)) #NA -> 7 registros

becal17 = filter(becal17, !(is.na(becal17$ci))) #Registros que No son NA

##
# G
# Colocar aquí el código que realice la siguiente tarea:
# Convertir los registros cuyo contenido de la columna **maestriadoctorado** 
# sea de más de una línea (p.ej., 554) a contenido de una sola línea
# Sugerencia: Eliminar el caracter '\n'
##


becal17$maestriadoctorado = gsub('\n', ' ', becal17$maestriadoctorado) #reemplazamos '\n' por ' '


##
# H
# Colocar aquí el código que realice la siguiente tarea:
# Agregar la columna **categoriauni** para contener la categoría de la 
# universidad de acuerdo a su ranking. Las categorías a considerar son: top_10, 
# top_50, top_100, top_150, top_200, mas_200
##

categoria_ranking = function(ranking) {
  if(is.na(ranking) | ranking == 0) #NA o ranking = 0, es igual a SIN DATO
    return("sin dato")
  if(ranking <= 10)
    return("top_10")
  else if(ranking <= 50)
    return("top_50")
  else if(ranking <= 100)
    return("top_100")
  else if(ranking <= 150)
    return("top_150")
  else if(ranking <= 200)
    return("top_200")
  else
    return("mas_200")
}

str_trim(becal17$nrorankuni) #eliminamos espacios redundantes
becal17$nrorankuni = as.numeric(becal17$nrorankuni) #convertimos a numerico
becal17$categoriauni = sapply(becal17$nrorankuni, categoria_ranking)
#nrow(filter(becal17, is.na(as.numeric(becal17$nrorankuni))))

#errores: (Considerar como sin datos o investigar?????)
#[173] "Subject o área: Ingeniería civil y estructural - Puesto entre 51/100"
#[279] "251-300"                                                             
#[305] "5 SEGÚN ESPECIALIDAD"                                                
#[515] "201/300"                                                             
#[557] "0" 
#[838] "" 


##
# I
# Colocar aquí el código que realice la siguiente tarea:
# Agregar la columna **tipoestudio** que puede tomar uno de tres valores, maestria_profesional, 
# maestria_academica, o doctorado, dependiendo del tipo de beca
##

# Con grep buscamos los registros con las cadenas especificas en tipo de becas. 
# Una vez retornada la lista, se asigna la cadena del tipo correspondiente a la nueva columna
becal17[grep('Doctorado',becal17$tipodebecasegunprogramaaprobado),'tipoestudio'] = 'doctorado'
becal17[grep('Maestría para Profesionales',becal17$tipodebecasegunprogramaaprobado),'tipoestudio'] = 'maestria_profesional'
becal17[grep('Maestría para Investigadores',becal17$tipodebecasegunprogramaaprobado),'tipoestudio'] = 'maestria_academica'


##
# J
# Limpiar campo tipo de beca segun programa aprobado eliminando acentos y pasando
# el texto a minúscula. Sugerencia: utilizar la función normalizar_texto en utils.R
##

becal17$tipodebecasegunprogramaaprobado = sapply(becal17$tipodebecasegunprogramaaprobado, normalizar_texto) #aplicamos el apply y utilizamos la funcion limpiar nombres. El resultado lo actualizamos al data frame



##########  PARTE 2 - DATASET: becal-cobertura.csv  ###################

##
# A
# Colocar aquí el código que realice la siguiente tarea:
# Renombrar las columnas Total General y C.I. siguiendo las reglas mencionadas anteriormente
##


becal_cobertura = rename(becal_cobertura, tipodebecasegunprogramaaprobado = Tipo.de.Beca..según.Programa.aprobado., totalgralusd = Total.General, ci = C.I.)

##
# B
# Colocar aquí el código que realice la siguiente tarea:
# Convertir la columna **ci** al tipo numérico removiendo primeramente el separador 
# de miles (coma o punto)
##

becal_cobertura$ci = gsub('\\.', '', becal_cobertura$ci)   # eliminar punto
becal_cobertura$ci = gsub('\\,', '', becal_cobertura$ci)  # remplazar coma por punto
becal_cobertura$ci = as.numeric(becal_cobertura$ci)        # convertir a tipo numerico

becal_cobertura$ci = str_trim(becal_cobertura$ci) #eliminamos espacios redundantes

##
# C
# Colocar aquí el código que realice la siguiente tarea:
# Eliminar registros sin datos en la cédula de identidad
##

becal_cobertura = filter(becal_cobertura, !(is.na(becal_cobertura$ci))) #Registros que No son NA


##
# D
# Colocar aquí el código que realice la siguiente tarea:
# Convertir la columna **Total General** al tipo entero después de convertir los montos en euros a dolares 
# (utilizar el cambio 1USD->0.86E), eliminar los signos de dolar y euro también los puntos y espacios vacios, 
# redondear los montos decimales incrementando el parte entera si el primer digito después de la coma es mayor a 5
##

becal_cobertura$totalgralusd = sapply(becal_cobertura$totalgralusd, convertir_totalgeneral)

##########  PARTE 3 ###################

# Colocar aquí el código que realice la siguiente tarea:
# Agregar al dataset _becal2017.csv_ la columna **totalgralusd** del dataset _becal-cobertura.csv_ utilizando la 
# columna **ci** (disponible en ambos datasets) como referencia

names(becal_cobertura) = sapply(names(becal_cobertura), limpiar_nombres) #aplicamos el apply y utilizamos la funcion limpiar nombres. El resultado lo actualizamos al data frame
becal_cobertura$tipodebecasegunprogramaaprobado = sapply(becal_cobertura$tipodebecasegunprogramaaprobado, limpiar_nombres) #aplicamos el apply y utilizamos la funcion limpiar nombres. El resultado lo actualizamos al data frame



becal_cobertura_filtrado = select(becal_cobertura, "ci","tipodebecasegunprogramaaprobado","totalgralusd") #solamente nos interesa copiar la columna "totalgralusd" a becal17, por eso filtramos las columnas necesarias

becal_completo = merge(becal17, becal_cobertura_filtrado, by = c("ci"), all.x = TRUE) #hacemos el merge en becal17 de acuerdo a las columnas solicitadas

becal_completo = becal_completo[!duplicated(becal_completo),] #eliminamos filas duplicadas (provenientes del merge)

#write.csv(becal17, './data/becal2017.csv', row.names = F) #actualizamos el archivo becal2017.csv con la nueva columna
##########  PARTE 4 ###################

# Escribir nuevo dataset
write.csv(becal_completo, './data/becal_completo.csv', row.names = F, fileEncoding = "utf-8", eol = "\n")
