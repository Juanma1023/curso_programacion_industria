import os
from obtener_datos import Datos

class Restuarante:
    def __init__(self,nombre = "Restuarante Universidad de Antioquia",telefono = "+57 3129876123"):
      self.nombre_restuarante = nombre
      self.telefono_restaurante = telefono

    def obtenerMenu(listaMenus):
      """
      Lee un archivo y devuelve una lista de cadenas.
      
      :param listaMenus: es una lista de archivos que contienen el menú
      :return: El menú está siendo devuelto.
      """
      menu = []
      archivoMenu = os.path.join(listaMenus)
      menu = Datos.leerArchivo(archivoMenu)
      for j in range(len(menu)):
        if(j != 0):
            descripcion = menu[j]
            menu.append(descripcion)
      return menu
