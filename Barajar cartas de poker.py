import random

# Crear una baraja de poker
def crear_baraja():
    palos = ['Corazones', 'Diamantes', 'Tréboles', 'Picas']
    valores = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    baraja = [{'valor': valor, 'palo': palo} for valor in valores for palo in palos]
    return baraja

# Función para barajar la baraja
def barajar_baraja(baraja):
    random.shuffle(baraja)

# Función para mostrar la baraja
def mostrar_baraja(baraja):
    for carta in baraja:
        print(f"{carta['valor']} de {carta['palo']}")

# Crear y barajar la baraja
baraja = crear_baraja()
barajar_baraja(baraja)

# Mostrar la baraja barajada
mostrar_baraja(baraja)
