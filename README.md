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
| Nº                     | Número de identificador de registro en el dataset           |    Discreto   |                                                                                                                    |
| C.I.                   | Cédula de identidad del becario                             |     Texto     |                                                                                                                    |
| Nombre y apellido      | Nombre y apellido del becario                               |     Texto     |                                                                                                                    |
| Tipo de Beca           | Tipo de beca otorgado según programa aprobado               |   Categorico  | "Doctorado para Investigadores en CyT", "Maestría para Profesionales en CyT", "Maestría para Investigadores en CyT", ... |
| Maestria/Doctorado     | Nombre o área de especialización de la maestría/doctorado   |   Categorico  | "Doctorado en Biotecnología Molecular", "PhD Estructura de grupos superficies abelianas, "Master in Management", ...    |
| Universidad de destino | Universidad donde el becario cursará la maestría/doctorado  |   Categorico  | "Universidad de Chile", "Universidad Aix Marselle", "Universidad de Bremen", ...                                         |
| País                   | País de la universidad destino                              |   Categorico  | "EE.UU", "Francia", "Inglaterra", ...                                                                                    |
| Dpto. de origen        | Departamento de origen del becario                          |   Categorico  | "Capital", "San Pedro"	, "Cordillera", ...                                                                               |
| Total General          | Monto o costo total del programa aprobado                   |    Continuo   | $ 27.356, € 22.934,43, ...                                                                                         |

#### Dataset 2: *BECAL 2017* 

|               Campo               	|                                       Descripción                                      	|    Tipo de dato   	|                                                Valores ejemplo                                                	|
|:---------------------------------:	|:--------------------------------------------------------------------------------------:	|:-----------------:	|:-------------------------------------------------------------------------------------------------------------:	|
| Nº                                	| Número de identificador de registro en el dataset                                      	|      Discreto     	|  1, 5, 100, ...                                                                                                             	|
| Condición                         	| Estado o condición del becario			                                              	|     Categorico    	| "Becario", "No Becario", "Becario retornado", "Pendiente", ...                                                       	|
| Nº                                 	| Número de registro por tipo de convocatoria	                                         	|		Discreto      	|  1, 5, 100, ...                                                                                                             	|
| Tipo de Convocatoria              	| Nombre de la convocatoria o llamado para otorgar las becas                               	|     Categorico       	| "1era. Convocatoria Autogestionada",  "2da. Convocatoria Autogestionada", "3era. Convocatoria Autogestionada", ... 	|
| Fecha de adjudicación             	| Fecha de adjudicación de la beca                                                      	|      Texto/Fecha  	| "12 de agosto de 2015", "21 de diciembre del 2016", ...                                                              	|
| C.I.                              	| Cédula de identidad del becario                                                       	|      Texto	      	|  "2.123.464", "4.192.456", ...                                                                                                             	|
| Sexo                              	| Sexo del becario                                                                         	|     Categorico    	| Femenino/Masculino                                                                                            	|
| Edad                              	| Edad del becario                                                                       	|		Discreto	 	| 22, 23, 25, ...                                                                                                              	|
| Funcionario Público (Institución) 	| Institución pública a la que puede pertenecer el becario				                   	|      Categorico      	| "Universidad Nacional de Asunción", "Ministerio Público", "Cámara de Senadores", ...                                   	|
| Cargo                             	| Cargo o modalidad del contrato del becario como funcionario de la institucion publica 	|      Categorico      	| "DOCENTE INVESTIGADOR", "CONTRATADA", "FUNCIONARIA UNA", ...                                                           	|
| Goce de sueldo                    	| Indica si el becario, como funcionario publico, tiene goce de sueldo                   	|      Binario      	|  Si / No                                                                                                             	|
| Tipo de Beca                      	| Tipo de beca otorgado según programa aprobado                                            	|      Categorico      	| "Doctorado para Investigadores en CyT", "Maestría para Profesionales en CyT", Maestría para Investigadores en CyT", ...|
| Área de la ciencia                	| Área de la ciencia del programa a la cual aplica el becario                              	|      Categorico     	| "Ciencias Exactas y Naturales", "Ingeniería y Tecnología", "Ciencias Sociales", ...                                    	|
| Disciplina                        	| Disciplina del programa a la cual aplica el becario                                      	|     Categorico       	| "Ciencias biológicas", "Matemática", "Economía" y "Negocios", ...                                                        	|
| Sector priorizado Conacyt         	| Sector priorizado del programa de la Concayt dentro de la cual se enmarca el programa del becario   	|     Categorico       	|  "Tecnologías transversales", "Sectores sociales", "Sectores productivos", ...                                         	|
| Subsector priorizado              	| Subsector priorizado del programa de la Concayt dentro de la cual se enmarca el programa del becario	|     Categorico       	|  	"Biotecnología", "Tecnologías cognitivas", "Metalmecánica", ...                                                      	|
| Maestría / Doctorado              	| Nombre o área de especialización de la maestría/doctorado                                	|      Categorico      	|  "Doctorado en Biotecnología Molecular", "PhD Estructura de grupos superficies abelianas", "Master in Management", ... 	|
| Universidad de Destino            	| Universidad donde el becario cursará la maestría/doctorado                               	|      Categorico      	|  "Universidad de Chile", "Universidad Aix Marselle", "Universidad de Bremen", ...                                      	|
| Ranking                           	| Nombre o tipo del ranking en el que se valora el status de la universidad                	|      Categorico      	|  "QS", "ARWU", "TIMES", ...                                                                                         	|
| Nº                                	| Posición de la universidad en el ranking definido                                        	|		Discreto       	|  1, 2 , 100, ...                                                                                                             	|
| Ranking de Área Específica        	| Nombre o tipo del ranking en el que se valora el área especifica al que pertenece el programa    	|  Categorico      	| "QS", "ARWU", "TIMES", ...                                                                                      	|
| Nº                                	| Posición del área especifico del programa en el ranking definido                                 	|		Discreto       	|  1, 2, 100, ...                                                                                                           	|
| Ciudad de destino (en español)    	| Ciudad de la universidad destino (en español)                                            	|    Categorico        	| "Seattle", "Santiago", "Madrid", ...                                                                                   	|
| País de Destino                   	| País de la universidad destino                                                          	|     Categorico       	| "EE.UU", "Francia", "Inglaterra", ...                                                                                  	|
| Meses de duración de estudios     	| Meses de duración del programa de la beca otorgada                                        |    Discreto          	| 5, 10, 24, 36, ...                                                                                                              	|
| Inicio (cobertura de beca)        	|  Fecha de inicio de la cobertura de la beca otorgada                                     	|    	Fecha          	| "1/1/2016", "2/10/2016", ...                                                                                                              	|
| Fin (cobertura de beca)           	|  Fecha de fin de la cobertura de la beca otorgada                                        	|       Fecha        	| "1/1/2016", "2/10/2016", ...                                                                                                              	|
| Ciudad de Origen                  	| Ciudad de origen del becario                                                             	|     Categorico      	| "Asunción", "Itauguá", "Pilar", ...                                                                                    	|
| Departamento de Origen            	| Departamento de origen del becario                                                       	|      Categorico      	| "Capital", "San Pedro", "Cordillera", ...                                                                          	|
| Ciudad de Residencia              	| Ciudad donde reside el becario                                                           	|       Categorico     	| "Asunción", "Itauguá", "Pilar", ...                                                                                   	|
| Departamento de Residencia        	| Departamento donde reside el becario                                                     	|      Categorico      	| "Capital", "San Pedro", "Cordillera", ...                                                                             	|
| Nivel socioeconómico              	| Nivel socioeconómico al cual pertenece el becario                                        	|     Continuo         	|                                                                                                               	|
| Tiempo de cobertura               	|  Tiempo de cobertura de la beca otorgada (en meses)                                      	|      Discreto        	| 5, 10, 24, 36, ...                                                                                                              	|
| Contrato Nº                       	|  Número de contrato                                                                      	|       Texto         	| 78/2015                                                                                                              	|
| Fecha firma de Contrato           	|  Fecha de la firma del contrato                                                          	|       Texto/Fecha    	|  9/15/2015                                                                                                             	|
| Fecha firma de Adenda             	| Fecha de la firma de la Adenda                                                          	|       Texto/Fecha    	|  9/15/2015                                                                                                             	|