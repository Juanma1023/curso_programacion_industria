from __init__ import *

menus = []
lista_pedido = []
esAdmin = False
dirname = os.path.dirname(__file__)
almuerzo = os.path.join(dirname, 'datos/menus/almuerzos')
bebida = os.path.join(dirname, 'datos/menus/bebidas')
archivo_pedidos = os.path.join(dirname, 'datos/pedidos')

# mode admin
for arg in sys.argv:
  if str(arg) == 'admin':
    esAdmin = True



menu_almuerzo = Restuarante.obtenerMenu(almuerzo)
menu_bebida = Restuarante.obtenerMenu(bebida)
# iniciar programa
limpiar()
if esAdmin:
  nombre_usuario = 'admin'
else:
  nombre_usuario = Cliente().nombre


def sistema(esAdmin, nombre):
    global restaurantes
    global lista_pedido
    # limpiar consola
    limpiar()
    Pedido.listar_pedido(lista_pedido)
    # preguntar
    intro = Cliente.introduccion(esAdmin, nombre)
    numero = obtenerSeleccion(intro)

    #VALIDACIÓN DE OPCIONES
    if numero == 1:
        menuAlmuerzos(intro, esAdmin, nombre)
    elif numero == 2:
        menuBebidas(intro, esAdmin, nombre)
    elif numero == 3:
        if len(lista_pedido) == 0:
            print("El carrito de compras se encuentra vacío")
            limpiar(3)
            return sistema(esAdmin, nombre)
        else:
            limpiar()
            print("----", nombre, "Gracias comprar en",Restuarante().nombre_restuarante,"----")
            Pedido.listar_pedido(lista_pedido)
            now = datetime.now()
            timestamp = str(datetime.timestamp(now))
            Datos.editarArchivo(archivo_pedidos+"/orden-"+timestamp, lista_pedido)
            print('Orden #{0} Ingresada ....'.format(timestamp))
            lista_pedido = []
            input("")
            return sistema(esAdmin, nombre)
    elif numero == 4:
        if len(lista_pedido) == 0:
            print("----", nombre, "Gracias comprar en",Restuarante().nombre_restuarante,"----")
            return 0
        else:
            print("Antes de salir debe pagar la orden realizada")
            limpiar(3)
            return sistema(esAdmin, nombre)
    else:
        return sistema(esAdmin, nombre)

def menuAlmuerzos(intro, esAdmin, nombre):
    global lista_pedido
    limpiar()
    palabra = "almuerzo"
    productos = Menu.listarProductos(menu_almuerzo, palabra)
    print("----", nombre, "estos son nuestros Almuerzos actuales ---")
    for i in range(len(productos)):
      if i < 6:
        print('{0}) {1}............ Valor: ${2}'.format(i+1, productos[i][1], productos[i][2]))
    print("----"*20)
    print("0) Volver al menú principal")
    print()
    pregunta = str(input("Digite su opción: "))
    numero = obtenerSeleccion(pregunta)
    print(numero)
    if numero == 0:
        return sistema(esAdmin, nombre)
    if numero > 0 and numero <= 10 and len(productos) > numero-1:
        lista_pedido = Pedido.generarPedido(productos[numero-1], lista_pedido)
        return sistema(esAdmin, nombre)
    else:
        return menuAlmuerzos(intro, esAdmin, nombre)


def menuBebidas(intro, esAdmin, nombre):
    global lista_pedido
    limpiar()
    palabra = "bebida"
    productos = Menu.listarProductos(menu_bebida, palabra)
    print("----", nombre, "estas son nuestras bebidas actuales ----")
    for i in range(len(productos)):
      if i < 5:
        print('{0}) {1}........... Valor: ${2}'.format(i+1, productos[i][1], productos[i][2]))
    print("----")
    print("0) Volver al menú principal")
    print()
    pregunta = str(input("Digite su opción: "))
    numero = obtenerSeleccion(pregunta)
    print(numero)
    if numero == 0:
        return sistema(esAdmin, nombre)
    if numero > 0 and numero <= 10 and len(productos) > numero-1:
        lista_pedido = Pedido.generarPedido(productos[numero-1], lista_pedido)
        return sistema(esAdmin, nombre)
    else:
        return menuBebidas(intro, esAdmin, nombre)


# ejecutar primera pregunta
opcion_1 = sistema(esAdmin, nombre=nombre_usuario)
print(opcion_1)
