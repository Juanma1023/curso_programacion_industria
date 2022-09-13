import csv

# Lee y escribe archivos CSV
class Datos:
  def __init__(self):
    pass

  def leerArchivo(nombre_archivo):
    """
    Lee un archivo csv y devuelve una lista de listas
    
    :param nombre_archivo: El nombre del archivo que desea leer
    :return: Una lista de listas.
    """
    datos = []
    with open(nombre_archivo + '.csv') as archivo_csv:
      leer_csv = csv.reader(archivo_csv, delimiter=',')
      for fila in leer_csv:
        datos.append(fila)
      return datos

  def editarArchivo(nombre_archivo, datos):
    """
    Abre el archivo, crea un objeto de escritura csv y escribe los datos en el archivo.
    
    :param nombre_archivo: El nombre del archivo que desea editar
    :param datos: los datos que desea escribir en el archivo
    """
    with open(nombre_archivo + '.csv', mode='w', newline='') as nuevo_archivo:
      editar_csv = csv.writer(nuevo_archivo, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
      editar_csv.writerows(datos)