from django.contrib.auth.models import User, Group
import requests


def importe_total_carro(request):
    total=0
    resp = requests.get('https://mindicador.cl/api')
    monedas = resp.json()
    try:
        user = User.objects.get(id=request.user.id)
        usuario = user.groups.filter(name='subscriptor').exists()
    
    except User.DoesNotExist:
        usuario = False
           
    for key, value in request.session["carro"].items():
        total=total+(int(value["precio"])*value["cantidad"])
        
    if  usuario == True:
        descuento = (total*0.05)
        totaldes = int(total-descuento)
        dolar = round( (totaldes / monedas["dolar"]["valor"]), 2)
    else:
        descuento = 0
        totaldes = total
        dolar = round( (totaldes / monedas["dolar"]["valor"]), 2)
    return {"importe_total_carro": total, "descuento": descuento, "totaldes" : totaldes, "dolar" : dolar}


def cantidad_carro(request):
    cantidad=0
    for key, value in request.session["carro"].items():
        cantidad=cantidad+value["cantidad"]
    return {"cantidad_carro": cantidad} 