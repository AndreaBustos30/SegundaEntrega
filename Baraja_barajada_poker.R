# Instala y carga la librería jsonlite si no está instalada
if (!requireNamespace("jsonlite", quietly = TRUE)) {
  install.packages("jsonlite")
}
library(jsonlite)

# Cargar la baraja desde el archivo JSON
baraja <- fromJSON("baraja.json")

# Mostrar las 5 cartas superiores
cartas_superiores <- baraja[1:5, ]
print(cartas_superiores)
