# Crear una función para repartir cartas
repartir_cartas <- function(numero_cartas) {
  # Crear una baraja de 52 cartas
  baraja <- 1:52

  # Inicializar un vector para almacenar las cartas repartidas
  cartas_repartidas <- c()

  # Comprobar si hay suficientes cartas para repartir
  if (numero_cartas > length(baraja)) {
    cat("No hay suficientes cartas en la baraja.\n")
    return(NULL)
  }

  # Repartir cartas
  for (i in 1:numero_cartas) {
    # Seleccionar una carta al azar
    carta_seleccionada <- sample(baraja, 1)

    # Agregar la carta seleccionada a las cartas repartidas
    cartas_repartidas <- c(cartas_repartidas, carta_seleccionada)

    # Eliminar la carta seleccionada de la baraja
    baraja <- baraja[-which(baraja == carta_seleccionada)]
  }

  # Mostrar las cartas repartidas
  cat("Cartas repartidas:", cartas_repartidas, "\n")
}

# Llamar a la función para repartir 5 cartas (puedes cambiar el número)
repartir_cartas(5)
