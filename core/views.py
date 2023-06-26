from django.shortcuts import render, redirect
from .models import *
from .forms import *
from django.contrib import messages
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
from rest_framework import viewsets
from .serializers import *
import requests 
import requests
from django.shortcuts import render
# CREANDO CLASE QUE VA A PERMITIR LA TRANSFORMACION
class ProductoViewset(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializers

class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    serializer_class = TipoProductoSerializers

# Create your views here.
def index(request):
    productosAll = Producto.objects.all()
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productosAll, 8)
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

def about(request):
    return render(request, 'core/about.html')

def editar(request):
    return render(request, 'core/editar.html')

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

def checkout(request):
    return render(request, 'core/checkout.html')

def contactus(request):
    return render(request, 'core/contact-us.html')

def agregar(request):
    return render(request, 'core/agregar.html')

def gallery(request):
    return render(request, 'core/gallery.html')

@login_required
def myaccount(request):
    return render(request, 'core/my-account.html')

def shop(request):
    return render(request, 'core/shop.html')

def ordercomplete(request):
    return render(request, 'core/order-complete.html')

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


import requests

def gatos(request):
    # URL de la API para obtener imágenes de gatos
    api_url_imagenes = 'https://api.thecatapi.com/v1/images/search?limit=5'

    # Realiza la llamada a la API para obtener imágenes de gatos
    response_imagenes = requests.get(api_url_imagenes)
    data_imagenes = response_imagenes.json()

    # Extrae las URLs de las imágenes de gatos de la respuesta
    image_urls = [item['url'] for item in data_imagenes]

    # URL de la API para obtener hechos de gatos
    api_url_hechos = 'https://cat-fact.herokuapp.com/facts/random?animal_type=cat&amount=5'

    # Realiza la llamada a la API para obtener hechos de gatos
    response_hechos = requests.get(api_url_hechos)
    data_hechos = response_hechos.json()

    # Extrae los hechos de gatos de la respuesta
    facts = [item['text'] for item in data_hechos]

    # Pasa las URLs de las imágenes y los hechos de gatos a la plantilla
    return render(request, 'core/gatos.html', {'image_urls': image_urls, 'facts': facts})


