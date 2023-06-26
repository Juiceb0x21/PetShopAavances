
class Carro:
    def __init__(self, request):
        self.request = request
        self.session = request.session
        carro = self.session.get("carro")
        if not carro:
            carro = self.session["carro"] = {}
        self.carro = carro

    def agregar(self, producto):
        if str(producto.id) not in self.carro.keys():
            if producto.stock > 0:
                self.carro[str(producto.id)] = {
                    "producto_id": producto.id,
                    "nombre": producto.nombre,
                    "precio": str(producto.precio),
                    "precio2": int(producto.precio),
                    "cantidad": 1,
                    "imagen": producto.imagen.url
                }
                producto.stock -= 1
                producto.save()
            else:
                # Lógica para manejar el caso cuando no hay stock disponible 
                # Puedes mostrar un mensaje de error al usuario, por ejemplo
                pass
        else:
            for key, value in self.carro.items():
                if key == str(producto.id):
                    if value["cantidad"] < producto.stock:
                        value["cantidad"] += 1
                        value["precio2"] += producto.precio
                        producto.stock -= 1
                        producto.save()
                    else:
                        # Lógica para manejar el caso cuando no hay suficiente stock disponible
                        # Puedes mostrar un mensaje de error al usuario, por ejemplo
                        pass
                    break
        self.guardar_carro()

    def guardar_carro(self):
        self.session["carro"] = self.carro
        self.session.modified = True

    def eliminar(self, producto):
        producto_id = str(producto.id)
        if producto_id in self.carro:
            producto.stock += self.carro[producto_id]["cantidad"]
            del self.carro[producto_id]
            producto.save()
            self.guardar_carro()

    def restar_producto(self, producto):
        producto_id = str(producto.id)
        if producto_id in self.carro:
            for key, value in self.carro.items():
                if key == producto_id:
                    value["cantidad"] -= 1
                    value["precio2"] -= producto.precio
                    producto.stock += 1
                    producto.save()  # Guardar el producto actualizado
                    if value["cantidad"] < 1:
                        self.eliminar(producto)
                    break
            self.guardar_carro()

    def limpiar_carro(self):
        for key, value in self.carro.items():
            producto_id = value["producto_id"]
        self.carro = {}
        self.guardar_carro()

    def agregar_pedido(self):
        self.carro.items()


# Vistas
def agregar_producto(request, producto_id):
    carro = Carro(request)
    producto = producto.objects.get(id=producto_id)
    carro.agregar(producto=producto)

  
def eliminar_producto(request, producto_id):
    carro = Carro(request)
    producto = producto.objects.get(id=producto_id)
    carro.eliminar(producto=producto)

