
# Crea una clase llamada Menú.
class Menu:
    def __init__(self):
        pass 
    def listarProductos(menu, categoria):
        """
        Toma una lista de diccionarios y una cadena como entrada y devuelve una lista de diccionarios
        
        :param menu: lista de listas
        :param categoria: "Almuerzo o bebida"
        :return: una lista de diccionarios
        """
        lista = []
        for receta in menu:
            for col  in receta:
                if col == categoria:
                    lista.append(receta)
        return lista
