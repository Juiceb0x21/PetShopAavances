from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from pedidos.models import Pedido, LineaPedido
from carro.carro import Carro
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from django.core.mail import send_mail

# Create your views here.

@login_required
def procesar_pedido(request):
    pedido = Pedido.objects.create(user=request.user)
    carro = Carro(request)
    lineas_pedido = list() 
    for key, value in carro.carro.items():
        lineas_pedido.append(LineaPedido( 
            producto_id = key,
            cantidad = value["cantidad"],
            user = request.user,
            pedido = pedido
        ))
    LineaPedido.objects.bulk_create(lineas_pedido)

    carro=Carro(request)
    carro.limpiar_carro()

    return redirect("ordercomplete")

