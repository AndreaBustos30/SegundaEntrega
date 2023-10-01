# Crear un vector con los palos de la baraja de póker
palos <- c("Corazones", "Diamantes", "Tréboles", "Picas")

# Crear un vector con los valores de las cartas
valores <- c("2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A")

# Crear una matriz para representar la baraja de póker
baraja <- expand.grid(Valor = valores, Palo = palos)

# Crear un DataFrame
cartas_df <- as.data.frame(baraja)

# Crear un archivo CSV con las cartas de la baraja de póker
write.csv(cartas_df, file = "baraja_de_poker.csv", row.names = FALSE)

# Verificar la creación del archivo
if (file.exists("baraja_de_poker.csv")) {
  cat("El archivo 'baraja_de_poker.csv' se ha creado con éxito.\n")
} else {
  cat("Hubo un error al crear el archivo.\n")
}
