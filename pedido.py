class Pedido:
    def __init__(self):
        pass

    def generarPedido(orden, lista):
        """
        Toma una lista de tres elementos y la agrega a otra lista
        
        :param orden: [id, cantidad, precio]
        :param lista: lista de listas
        :return: La lista de pedidos.
        """
        lista.append([orden[0], orden[1], orden[2]])
        return lista

    def listar_pedido(lista=[]):
        """
        Imprime la orden actual, y el precio total acumulado de la orden.
        
        :param lista: lista de listas
        :return: el importe total del pedido.
        """
        total = float(0)
        if len(lista) == 0:
            return
        else:
            print("------- Orden de Compra Actual -------")
            for x in lista:
                print('{0} ...... ${2}'.format(x[1], x[0], x[2]))
                precio = float(x[2])
                total = total+precio
            print('Total Acumulado: ${0}'.format(total))
            print("-----"*19)
        
