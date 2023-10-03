# Función para calcular el valor de una mano de blackjack
calcular_puntuacion <- function(mano) {
  puntuacion <- sum(mano)
  if (puntuacion > 21 && 11 %in% mano) {
    puntuacion <- puntuacion - 10
  }
  return(puntuacion)
}

# Función para jugar al blackjack
jugar_blackjack <- function() {
  # Baraja de cartas
  cartas <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11)

  # Repartir dos cartas al jugador y al crupier
  jugador <- sample(cartas, 2)
  crupier <- sample(cartas, 2)

  cat("¡Bienvenido al Blackjack!\n\n")

  # Comenzar el juego
  while (TRUE) {
    cat("Tus cartas:", jugador, "Puntuación:", calcular_puntuacion(jugador), "\n")
    cat("Carta del crupier:", crupier[1], "\n")

    # Verificar si el jugador ha ganado o perdido
    if (calcular_puntuacion(jugador) > 21) {
      cat("Has perdido. ¡Tienes más de 21 puntos!\n")
      break
    }

    # Preguntar al jugador si desea tomar otra carta o parar
    respuesta <- readline("¿Quieres tomar otra carta? (s/n): ")

    if (respuesta == "s") {
      # Tomar una carta adicional y agregarla a la mano del jugador
      nueva_carta <- sample(cartas, 1)
      jugador <- c(jugador, nueva_carta)
    } else {
      # El jugador decide parar, ahora el crupier juega
      while (calcular_puntuacion(crupier) < 17) {
        nueva_carta_crupier <- sample(cartas, 1)
        crupier <- c(crupier, nueva_carta_crupier)
      }

      cat("Cartas del crupier:", crupier, "Puntuación del crupier:", calcular_puntuacion(crupier), "\n")

      # Determinar el resultado
      if (calcular_puntuacion(jugador) > 21) {
        cat("¡Gana el crupier! Tu puntuación es mayor que 21.\n")
      } else if (calcular_puntuacion(crupier) > 21 || calcular_puntuacion(jugador) > calcular_puntuacion(crupier)) {
        cat("¡Felicidades! ¡Has ganado!\n")
      } else if (calcular_puntuacion(jugador) == calcular_puntuacion(crupier)) {
        cat("Es un empate.\n")
      } else {
        cat("¡Gana el crupier! Su puntuación es mayor que la tuya.\n")
      }
      break
    }
  }
}

# Iniciar el juego de blackjack
jugar_blackjack()
