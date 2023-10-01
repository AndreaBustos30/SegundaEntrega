# Crear un vector con los valores de las cartas
valores <- c("2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A")

# Crear un vector con los palos de las cartas
palos <- c("Corazones", "Diamantes", "Tréboles", "Picas")

# Crear todas las combinaciones de cartas
cartas <- expand.grid(Valor = valores, Palo = palos)

# Mostrar el marco de datos con la información de la baraja
print(cartas)
