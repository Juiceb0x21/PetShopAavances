from django.urls import path, include
from .views import *
from rest_framework import routers


#CREAMOS RUTAS API
router = routers.DefaultRouter()
router.register('productos', ProductoViewset)
router.register('tipoproductos', TipoProductoViewset)
router.register('pedido', PedidoViewset)
router.register('lineapedido', LineaPedidoViewset)

urlpatterns = [
        #API
        path('api/', include(router.urls)),


    	path('', index, name="index"),
    	path('indexapi/', indexapi, name="indexapi"),
        path('about/', about, name="about"),
        path('agregar/', agregar, name="agregar"),
        path('wishlist/', wishlist, name="wishlist"),
        path('statusadmin/', statusadmin, name="statusadmin"),
        path('subscripcion/', subscripcion, name="subscripcion"),
        path('cart/', cart, name="cart"),
        path('checkout/', checkout, name="checkout"),
        path('contactus/', contactus, name="contactus"),
        path('gallery/', gallery, name="gallery"),
        path('myaccount/', myaccount, name="myaccount"),
        path('shop', shop, name="shop"),
        path('ordercomplete/', ordercomplete, name="ordercomplete"),
        path('productdetail/<id>/', productdetail, name="productdetail"),
        path('cart/', cart, name='cart'),
        path('productos/', productos, name='productos'),
        path('usuario/', usuario, name='usuario'),
        path('status/', status, name='status'),
        path('detallepedido/<id>/', detallepedido, name="detallepedido"),
        path('updatepedido/<id>/', updatepedido, name="updatepedido"),
        path('undopedido/<id>/', undopedido, name="undopedido"),
        path('cancelarpedido/<id>/', cancelarpedido, name="cancelarpedido"),
        path('regresarpedido/<id>/', regresarpedido, name="regresarpedido"),
        

        path('product/', product, name="product"),
        path('update/<id>/', update, name="update"),
        path('delete/<id>/', delete, name="delete"),
    

        path('suscribir/<id>/', agregar_suscriptor, name="suscribir"),
        path('quitar-usuario/<id>/', quitar_usuario_de_grupo, name='quitar_usuario_de_grupo'),
    ]

    