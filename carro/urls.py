from django.urls import path
from .views import *

app_name="carro"

urlpatterns = [ 

    path("agregar/<int:producto_id>/", agregar_producto, name="agregar"),
    path("eliminar/<int:producto_id>/", eliminar_producto, name="eliminar"),
    path("restar/<int:producto_id>/", restar_producto, name="restar"),
    path("limpiar/", limpiar_carro, name="limpiar"),

]