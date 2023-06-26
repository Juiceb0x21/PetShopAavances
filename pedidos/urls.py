from django.urls import path
from .views import *

app_name = 'pedidos'

urlpatterns = [

    path("", procesar_pedido , name="procesar_pedido"),
]
