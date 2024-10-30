##Ejercicio 1
###Crear la lista con diferentes tipos de datos
mi_lista <- list(
  mi_vector = c(1, 2, 3, 4, 5),  # Vector
  mi_matriz = matrix(1:6, nrow = 2, ncol = 3),  # Matriz
  mi_data_frame = data.frame(Nombre = c("Michelle", "Abraham"), Edad = c(20, 23))
)

mi_lista ##Ver lo que acabo de crear 



##Ejercicio 3
##Almacena datos de producción en experimentos de fermentación

##Crea una lista de fermentación con 4 elementos, cada uno representando un experimento de fermentación 
#Encuentra la condición con la mayor producción de etanol.
experimento_fermentacion <- list (
  list(Cepa= "Cepa1", Condicion = "Aerobio", Etanol = 15.2),
  list(Cepa = "Cepa2", Condicion = "Anaerobio", Etanol= 20.5), 
  list(Cepa = "Cepa3", Condicion = "Anaerobio", Etanol = 18.0), 
  list(Cepa= "Cepa4", Condicion = "Aerobio", Etanol = 10.8)
)
# Inicializar variables para almacenar el máximo etanol y la condición correspondiente
max_etano_produccion <- max(experimento_fermentacion[[1]]$Etanol, experimento_fermentacion[[2]]$Etanol, experimento_fermentacion[[3]]$Etanol, experimento_fermentacion[[4]]$Etanol) ##Este en la lista es la producción de etanol más alta 
max_etano_produccion

##Usar for para decirle cual es la producción de etanol más alta de max_etano_produccion y que me imprima la cepa y la condicion 
for(experimento in experimento_fermentacion) {
  if (experimento$Etanol == max_etano_produccion) {  ###Le estoy pidiendo que use el máximo de este vector
    print(paste ("La cepa con la mayor producción de Etanol es:", experimento$Cepa, "y su condición es:", experimento$Condicion, "y la cantidad de Etanol que produjo fue:", experimento$Etanol))
  }
}


##Ejercicio 5
##Mantén un registro de ensayos clínicos en una lista.

ensayos_clinicos <- list (
  list(Nombre ="Obesidad", Fase = "Clínica", Numero_pacientes = 107),
  list (Nombre = "EPOC", Fase = "Experimental", Numero_pacientes = 59),
  list (Nombre= "Neumonia", Fase = "Laboratorio", Numero_pacientes = 63)
)

##Calcular el total de pacientes en todos los ensayos clínicos 
total_pacientes <- 0
for(ensayo in ensayos_clinicos){
  total_pacientes <- total_pacientes + ensayo$Numero_pacientes ##Ya solo sume y agregue esto para poderle poner en print
}
print(paste("El total de pacientes en todos los ensayos clínicos es: ", total_pacientes))




