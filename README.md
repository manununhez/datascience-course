# Data Science con Impacto Social

Curso práctico sobre la ciencia de los datos y su aplicación al estudios de fenómenos sociales mediante el uso de _**datos abiertos**_ por el gobierno nacional. El curso ofrece una introducción a las principales conceptos, técnicas, y herramientas necesarios para extraer conocimiento de los datos. En el curso se aprenderá a colectar y pre-procesar datos, plantear preguntas de investigación, responder a estas preguntas, y visualizar los resultados.

## Objetivos

1. Aprender los conceptos básicos sobre ciencia y análisis de datos
2. Aprender y aplicar técnicas para la obtención y pre-procesamiento de datos en bruto
3. Aplicar herramientas estadísticas básicas para el análisis exploratorio de datos
4. Aprender y aplicar técnicas de inferencia estadística que permitan derivar conclusiones a partir de muestras de datos
5. Aprender y aplicar técnicas de aprendizaje supervisado que permitan explorar relaciones en los datos y derivar predicciones

## Requisitos

* Experiencia en programación orientada a objetos. Obs. __Para alumnos de Ing. Informática de la UC, haber aprobado la asignatura Lenguaje de Programación II__
* Conocimientos básicos de estadística (distribución normal, promedio, mediana, modo, varianza, desviación estándard, estadarización) Obs. __Para alumnos de Ing. Informática de la UC, haber aprobado la asignatura Estadística__

 ## Datos del Curso

* __Inicio__: 24-10-2017
* __Finalización__: 12-12-2017
* __Limite de Inscripción__: 20-10-2017
* __Modalidad__: Presencial (8 clases de 3 horas por semana)
* __Lugar__: Facultad de Ciencias y Tecnología, Universidad Católica “Nuestra Señora de la Asunción”, Campus Santa Librada, Asunción
* __Día y hora de Lección__: Martes de 9:00 a 12:00
* __Dedicación y créditos__: 2 créditos por asistencia y presentación de trabajos prácticos. Se podrán considerar créditos adicionales con la continuidad del proyecto posterior a la culminación de la materia, que derive en artículos científicos publicables en conferencias internacionales

## Inscripción

Completar el formulario de inscripción al curso [aquí](https://goo.gl/forms/tOsDDGlfnqG3Yb0r2)

## Tópicos

1. Introducción a la ciencia de los datos y base teórica
2. Herramientas para análistas y científicos de datos
3. Colección y pre-procesamiento de datos
4. Análisis Exploratorio de datos
5. Inferencia Estadística
6. Aprendizaje supervisado


## Programa BECAL

Becas destinadas a egresados de una carrera con el fin de llevar a cabo sus estudios de especialización (maestrías o doctorados en un país extranjero). El principal desafío de BECAL es mejorar la oferta del capital humano avanzado, mediante el financiamiento de becas de estudios de entrenamiento docente y postgrados en centros de excelencia del exterior. El mismo, tiene por objetivo contribuir a aumentar los niveles de generación y aplicación de conocimiento en las áreas de Ciencias y Tecnología (CyT) y en los niveles de aprendizaje en la educación. El principal problema a ser abordado por este programa es la baja capacidad del país para generar y aplicar conocimiento requerido para el desarrollo. Fuente: [Programa Becal](http://www.becal.gov.py/)

### Datasets

#### Dataset 1: *Cobertura BECAL*

|         Campos         |                         Descripción                         | Tipo de datos |                                                   Valores ejemplo                                                  |
|:----------------------:|:-----------------------------------------------------------:|:-------------:|:------------------------------------------------------------------------------------------------------------------:|
| No                     | número de identificador de registro en el dataset           |    Numerico   |                                                                                                                    |
| C.I.                   | cédula de identidad del becario                             |     Texto     |                                                                                                                    |
| Nombre y apellido      | nombre y apellido del becario                               |     Texto     |                                                                                                                    |
| Tipo de Beca           | Tipo de beca otorgado según programa aprobado               |   Categorico  | Doctorado para Investigadores en CyT, Maestría para Profesionales en CyT, Maestría para Investigadores en CyT, ... |
| Maestria/Doctorado     | nombre o área de especialización de la maestría / doctorado |   Categorico  |                                                                                                                    |
| Universidad de destino | universidad donde el becario cursará la maestría/doctorado  |   Categorico  | EE.UU, Francia, Inglaterra, ...                                                                                    |
| País                   | país de la universidad destino                              |   Categorico  |                                                                                                                    |
| Dpto. de origen        | departamento de origen del becario                          |   Categorico  |                                                                                                                    |
| Total General          | monto o costo total del programa aprobado                   |     Texto     |                                                                                                                    |

#### Dataset 2: *BECAL 2017* 

|               Campo               	|                                       Descripción                                      	|    Tipo de dato   	|                                                Valores ejemplo                                                	|
|:---------------------------------:	|:--------------------------------------------------------------------------------------:	|:-----------------:	|:-------------------------------------------------------------------------------------------------------------:	|
| Nº                                	| Número de identificador de registro en el dataset                                      	|      numérico     	|                                                                                                               	|
| Condición                         	|                                                                                        	|     categórico    	| Becario, No Becario, Becario retornado,  Pendiente, ...                                                       	|
| N                                 	|                                                                                        	|                   	|                                                                                                               	|
| Tipo de Convocatoria              	|                                                                                        	|                   	| 1era. Convocatoria Autogestionada,  2da. Convocatoria Autogestionada,  3era. Convocatoria Autogestionada, ... 	|
| Fecha de adjudicación             	| Fecha de adjudicación de la beca                                                       	|      textual      	|                                                                                                               	|
| C.I.                              	| Cédula de identidad del becario                                                        	|      textual      	|                                                                                                               	|
| Sexo                              	|                                                                                        	|     categórico    	| Femenino/Masculino                                                                                            	|
| Edad                              	| Edad del becario                                                                       	| numérico/discreto 	|                                                                                                               	|
| Funcionario Público (Institución) 	| Indica si el becario es funcionario o no de una institución pública                    	|      textual      	|                                                                                                               	|
| Cargo                             	| Cargo o modalidad del contrato del becario como  funcionario de la institucion publica 	|      textual      	|                                                                                                               	|
| Goce de sueldo                    	| Indica si el becario, como funcionario publico, tiene goce de sueldo                   	|      binario      	|                                                                                                               	|
| Tipo de Beca                      	|                                                                                        	|                   	|                                                                                                               	|
| Área de la ciencia                	|                                                                                        	|                   	|                                                                                                               	|
| Disciplina                        	|                                                                                        	|                   	|                                                                                                               	|
| Sector priorizado Conacyt         	|                                                                                        	|                   	|                                                                                                               	|
| Subsector priorizado              	|                                                                                        	|                   	|                                                                                                               	|
| Maestría / Doctorado              	|                                                                                        	|                   	|                                                                                                               	|
| Universidad de Destino            	|                                                                                        	|                   	|                                                                                                               	|
| Ranking                           	|                                                                                        	|                   	|                                                                                                               	|
| Nº                                	|                                                                                        	|                   	|                                                                                                               	|
| Ranking de Área Específica        	|                                                                                        	|                   	|                                                                                                               	|
| Nº                                	|                                                                                        	|                   	|                                                                                                               	|
| Ciudad de destino (en español)    	|                                                                                        	|                   	|                                                                                                               	|
| País de Destino                   	|                                                                                        	|                   	|                                                                                                               	|
| Meses de duración de estudios     	|                                                                                        	|                   	|                                                                                                               	|
| Inicio (cobertura de beca)        	|                                                                                        	|                   	|                                                                                                               	|
| Fin (cobertura de beca)           	|                                                                                        	|                   	|                                                                                                               	|
| Ciudad de Origen                  	|                                                                                        	|                   	|                                                                                                               	|
| Departamento de Origen            	|                                                                                        	|                   	|                                                                                                               	|
| Ciudad de Residencia              	|                                                                                        	|                   	|                                                                                                               	|
| Departamento de Residencia        	|                                                                                        	|                   	|                                                                                                               	|
| Nivel socioeconómico              	|                                                                                        	|                   	|                                                                                                               	|
| Tiempo de cobertura               	|                                                                                        	|                   	|                                                                                                               	|
| Contrato Nº                       	|                                                                                        	|                   	|                                                                                                               	|
| Fecha firma de Contrato           	|                                                                                        	|                   	|                                                                                                               	|
| Fecha firma de Adenda             	|                                                                                        	|                   	|                                                                                                               	|