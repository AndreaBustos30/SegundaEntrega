import random
import json

# Crear una baraja de poker
def crear_baraja():
    palos = ['Corazones', 'Diamantes', 'Tréboles', 'Picas']
    valores = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    baraja = [{'valor': valor, 'palo': palo} for valor in valores for palo in palos]
    return baraja

# Función para barajar la baraja
def barajar_baraja(baraja):
    random.shuffle(baraja)

# Guardar la baraja barajada en un archivo JSON
baraja = crear_baraja()
barajar_baraja(baraja)
with open('baraja.json', 'w') as file:
    json.dump(baraja, file)
