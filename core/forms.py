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

class DireccionForm(forms.Form):
    Nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre"}))
    Apellido = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Apellido"}))
    Ciudad = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Ciudad"}))
    Comuna = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Comuna"}))
    Direccion = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Direccion"}))
    Email = forms.EmailField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Email"}))

class DonacionForm(forms.Form):
    Nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre"}))
    Email = forms.EmailField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Email"}))
    Monto = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Monto a donar (USD)"}))