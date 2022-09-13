from restaurantes import Restuarante

class Cliente:
    def __init__(self):
        print('---- Bienvenido al',Restuarante().nombre_restuarante,'----')
        self.nombre = input('Ingrese su nombre: ')


    def introduccion(user, nombre):
        print('----', nombre,'Bienvenido al',Restuarante().nombre_restuarante,'----')
        print('Estas son nuestras opciones:\n  1) Almuerzos\n  2) Bebidas\n  3) Finalizar Orden\n  4) Salir del sistema ')
        if user:
            print('5) Configuracion')
        print()
        return str(input( "Ingrese una opcion: " ))