from django import forms
from django.forms import ModelForm
from .models import *

class ProductoForm(ModelForm):
    nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre"}))
    precio = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Precio"}))
    stock = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Stock"}))
        
    class Meta:
        model = Producto
        fields = '__all__'

class CheckoutForm(forms.Form):
    Nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre"}))
    Apellido = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Apellido"}))
    Email = forms.EmailField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Email"}))
    Direccion = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Direccion"}))
    

class DonacionForm(forms.Form):
    Email = forms.EmailField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Email"}))
    Monto = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Monto que desea donar (USD)"}))