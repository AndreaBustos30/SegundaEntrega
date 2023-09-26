# Crear una baraja de póquer estándar
suits <- c("Corazones", "Diamantes", "Tréboles", "Picas")
values <- c("2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A")

# Crear un data frame que contenga todas las cartas
all_cards <- expand.grid(Suit = suits, Value = values)

# Guardar el data frame en un archivo CSV
write.csv(all_cards, "baraja_poker.csv", row.names = FALSE)
