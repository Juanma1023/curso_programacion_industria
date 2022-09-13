import os
import time
import platform
from obtener_datos import *
from menu import *

def limpiar(seg = 0):
    """
    Borra la pantalla después de un número específico de segundos
    :param segundos: El número de segundos a esperar antes de borrar la pantalla (optional)
    """
    sistema = platform.system()
    time.sleep(seg)
    if sistema == "Windows":
        os.system('cls')

def obtenerSeleccion(entrada):
    """
    Si la entrada no es un número, devuelve 0. Si la entrada es un número, devuelve el número
    
    :param entrada: La entrada del usuario
    :return: 0
    """
    # opcion no es un numero
    if not entrada.isnumeric():
        if entrada == '':
            return 0
        else:
            return 0
    else:
        return int(entrada)

def opcionesAdmin(restautantes, index):
    
    print('***** Administracion de Restaurante *****')
    print('{0}'.format(restautantes[index][0]))
    print("----")
    for col in range(len(restautantes[0])):
        print('{0}) Editar {1}'.format(col+1, restautantes[0][col]))
    print('{0}) Eliminar {1}'.format(len(restautantes[0])+1, restautantes[index][0]))
    print()
    opcion = obtenerSeleccion(str(input( "Ingrese una opcion: " )))
    if opcion == len(restautantes[0])+1:
        del restautantes[index]
        return restautantes
    else:
        print('{0}: {1}'.format(restautantes[0][opcion-1], restautantes[index][opcion-1]))
        nuevoDato = str(input( "Ingrese Nuevo dato: " ))
        restautantes[index][opcion-1] = nuevoDato
        print('{0} {1}: {2}'.format(restautantes[index][0], restautantes[0][opcion-1], restautantes[index][opcion-1]))
        return restautantes



