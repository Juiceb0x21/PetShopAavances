from django.shortcuts import render, redirect
from .models import * 
from .forms import *
from django.contrib import messages
from django.core.paginator import Paginator
from carro.carro import Carro
from django.contrib.auth.models import User, Group
from rest_framework import viewsets
from .serializers import *
import requests
from django.contrib.auth.decorators import login_required, user_passes_test
from pedidos.models import *
from django.shortcuts import get_object_or_404
from django.db.models.signals import post_save
from django.dispatch import receiver    


# CREANDO CLASE QUE VA A PERMITIR LA TRANSFORMACION
class ProductoViewset(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializers

class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    serializer_class = TipoProductoSerializers

#funcion generica que valida el grup

def grupo_requerido(nombre_grupo):
    def decorator (view_func):
        @user_passes_test(lambda user: user.groups.filter(name='nombre_grupo').exists())
        def wrapper(requests, *args, **kwargs):
            return view_func(requests, *args, **kwargs)
        return wrapper
    return decorator

# Create your views here.
def index(request):
    carro = Carro(request)
    productosAll = Producto.objects.all()
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productosAll, 4)
        productosAll = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProducto': productosAll,
        'paginator': paginator
    }

    return render(request, 'core/index.html', data)

def indexapi(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/TipoProductos/')
    respuesta2 = requests.get('http://mindicator.cl/api/')
    respuesta3 = requests.get('https://rickandmortyapi.com/api/characters/')

    #TRANSFORMACION A JSON
    productos = respuesta.json()
    monedas = respuesta2.json()
    aux = respuesta3.json()
    personajes = aux['results']

    data = {
        'listaProducto': productos,
        'moneda': monedas,
        'personajes': personajes,
    }

    return render(request, 'core/indexapi.html', data)

@login_required
def wishlist(request):
    return render(request, 'core/wishlist.html')

@login_required
def usuario(request):
    return render(request, 'core/usuario.html')

def productos(request):
    productosAll = Producto.objects.all()
    page = request.GET.get('page', 1) 
    
    try:
        paginator = Paginator(productosAll, 10)
        productosAll = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProductos': productosAll,
        'paginator': paginator
    }
    return render(request, 'core/productos.html', data)

def about(request):


    return render(request, 'core/about.html')


@login_required
def cart(request):
    respuesta = requests.get('https://mindicador.cl/api/dolar')
    monedas = respuesta.json()
    valor_usd = monedas['serie'][0]['valor']
    #logica para sumar el carrito
    valor_carrito = 20000 #ciclo for para sumar todos los productos del carrito
    #convertimos de clp a usd
    valor_total = valor_carrito/valor_usd

    data = {
        'valor': round(valor_total, 2)
    }

    return render(request, 'core/cart.html')

def historial(request):
    LineaPedido = LineaPedido.objects.all()
    data = {
        'LineaPedido' : LineaPedido
    }
    return render(request, 'core/gallery.html',data)

def contactus(request):
    return render(request, 'core/contact-us.html')

@login_required
def agregar(request):
    return render(request, 'core/agregar.html')

@login_required
def gallery(request):
    pedido = Pedido.objects.all()
    data = {
        'LineaPedido' : pedido,     
    }
    return render(request, 'core/gallery.html', data)

def detallepedido(request, id):
    pedido = Pedido.objects.get(id = id)
    lineapedido = LineaPedido.objects.filter(pedido=id)

    data = {
        'pedido': pedido,
        'lineapedido': lineapedido
    }

    return render(request, 'core/detallepedido.html', data)

@login_required
def myaccount(request):
    return render(request, 'core/my-account.html')

def shop(request):
    return render(request, 'core/shop.html')

@login_required
def ordercomplete(request):
    return render(request, 'core/order-complete.html')

def checkout(request):
    data = {
        'form' : CheckoutForm()
    }       

    if request.method == 'POST':
        formulario = CheckoutForm(request.POST)
        if formulario.is_valid():
            Nombre = formulario.cleaned_data['Nombre']
            Apellido = formulario.cleaned_data['Apellido']
            Direccion = formulario.cleaned_data['Direccion']
            Email = formulario.cleaned_data['Email']

    return render(request, 'core/checkout.html', data)

def productdetail(request, id):
    productosAll = Producto.objects.get(id=id)

    data = {
        'listaProducto': productosAll,
    }

    return render(request, 'core/productdetail.html', data)


def product(request):
    data = {
        'form' : ProductoForm()
    }   

    if request.method == 'POST':
        formulario = ProductoForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Producto almacenado correctamente")

    return render(request, 'core/product.html', data)

def update(request,id):
    producto = Producto.objects.get(id=id)
    data = {
        'form' : ProductoForm(instance=producto)
    }

    if request.method == 'POST':
        formulario = ProductoForm(data=request.POST, instance=producto, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Producto modificado correctamente")

            data['form'] = formulario

    return render(request, 'core/update.html', data)

def delete(requests,id):
    producto = Producto.objects.get(id = id)
    producto.delete()
    
    return redirect(to = "index")

def agregar_suscriptor(request, id):
    usuario = User.objects.get(id=id)
    usuario.groups.add(4)
    usuario.save()
    return redirect('status')

@login_required
def subscripcion(request):
    data = {
        'form' : DonacionForm()
    } 
    if request.method == 'POST':
        formulario = DonacionForm(request.POST)
        if formulario.is_valid():
            Nombre = formulario.cleaned_data['Nombre']
            Email = formulario.cleaned_data['Email']
            Monto = formulario.cleaned_data['Monto']
        
    return render(request, 'core/subscripcion.html', data)

@login_required
def status(request):
    user = User.objects.get(id=request.user.id)
    usuario = user.groups.filter(name='subscriptor').exists()
    data = {
        'usuario' : usuario
    }
    return render(request, 'core/status.html', data )

def quitar_usuario_de_grupo(request, id):

    usuario = User.objects.get(id=id)
    grupo = Group.objects.get(id=1)
    usuario.groups.remove(4)
    return redirect('status')
