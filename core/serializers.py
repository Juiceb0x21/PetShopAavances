#SE ENCARGA DE CONVERTIR LOS DATOS
from .models import *
from rest_framework import serializers
from pedidos.models import *


class TipoProductoSerializers(serializers.ModelSerializer):
    class Meta:
        model = TipoProducto
        fields = '__all__'

class ProductoSerializers(serializers.ModelSerializer):
    tipo = TipoProductoSerializers(read_only=True)

    class Meta:
        model = Producto
        fields = '__all__'

class PedidoSerializers(serializers.ModelSerializer):
    class Meta:
        model = Pedido
        fields = '__all__'

class LineaPedidoSerializers(serializers.ModelSerializer):
    pedido = PedidoSerializers(read_only=True)
    class Meta:
        model = LineaPedido
        fields = '__all__'
