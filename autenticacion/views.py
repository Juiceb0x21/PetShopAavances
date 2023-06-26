from django.shortcuts import render, redirect
from django.views.generic import View
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib.auth.models import Group
from django.contrib.auth.forms import UserCreationForm
from .forms import CustomUserCreationForm

# Create your views here.


"""class VRegistro(View):
    def get(self, request):
        form=UserCreationForm()
        return render(request, "registro/registro.html", {"form":form})

    def post(self, request):
        form=UserCreationForm(request.POST)
        
        if form.is_valid():
            
            usuario = form.save()
            login(request, usuario)
            
            return redirect('index')
        
        else:
            for msg in form.error_messages:
                messages.error(request, form.error_messages[msg])

                
            return render(request, 'registro/registro.html', {"form":form} )"""

def register(request):
    if request.method == 'POST':
        f = CustomUserCreationForm(request.POST)
        if f.is_valid():
            usuario = f.save()
            messages.success(request, 'Cuenta Creada correctamente')
            
            login(request, usuario)

            cliente = User.objects.get(username = usuario.username)
            cliente.groups.add(2)
            cliente.save()

            return redirect('index')

    else:
        f = CustomUserCreationForm()

    return render(request, 'registro/registro.html', {'form': f})