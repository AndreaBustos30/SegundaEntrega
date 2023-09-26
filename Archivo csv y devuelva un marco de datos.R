# Definir una función para cargar la baraja de póquer y asignar valores
load_poker_deck <- function(file_name) {
  # Cargar el archivo CSV
  poker_deck <- read.csv(file_name, header = TRUE, stringsAsFactors = FALSE)

  # Definir una función personalizada para asignar valores
  assign_card_value <- function(card) {
    card_value <- as.character(card$Value)
    if (grepl("^[2-9]$", card_value)) {
      return(as.numeric(card_value))
    } else if (card_value %in% c("10", "J", "Q", "K")) {
      return(10)
    } else if (card_value == "A") {
      return(11)  # Puedes ajustar el valor de A según las reglas del juego
    }
  }

  # Agregar una columna "CardValue" con los valores asignados
  poker_deck$CardValue <- sapply(poker_deck, assign_card_value)

  return(poker_deck)
}

# Utilizar la función para cargar la baraja de póquer
file_name <- "baraja_poker.csv"  # Reemplaza con el nombre de tu archivo CSV
poker_dataframe <- load_poker_deck(file_name)

# Ver el marco de datos resultante
head(poker_dataframe)
