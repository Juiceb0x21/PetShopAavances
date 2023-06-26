from django.urls import path, include
from .views import *
from rest_framework import routers

# CREAMOS RUTAS API
router = routers.DefaultRouter()
router.register('productos', ProductoViewset)
router.register('TipoProductos', ProductoViewset)

urlpatterns = [
    # API
    path('api/', include(router.urls)),

    path('', index, name="index"),
    path('indexapi/', indexapi, name="indexapi"),
    path('editar/', editar, name="editar"),
    path('about/', about, name="about"),
    path('agregar/', agregar, name="agregar"),
    path('cart/', cart, name="cart"),
    path('checkout/', checkout, name="checkout"),
    path('contactus/', contactus, name="contactus"),
    path('gallery/', gallery, name="gallery"),
    path('myaccount/', myaccount, name="myaccount"),
    path('shop', shop, name="shop"),
    path('ordercomplete/', ordercomplete, name="ordercomplete"),
    path('productdetail/<id>/', productdetail, name="productdetail"),
    path('cart/', cart, name='cart'),
    path('product/', product, name="product"),
    path('update/<id>/', update, name="update"),
    path('delete/<id>/', delete, name="delete"),
    path('gatos/', gatos, name='gatos'),
]


    