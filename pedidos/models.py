from django.db import models

from django.contrib.auth.models import User

from core.models import Producto

from django.db.models import F, Sum, FloatField

from datetime import datetime
# Create your models here.

class Pedido(models.Model):
    ESTADO_CHOICES = (
        ('Pendiente', 'Pendiente'),
        ('En proceso', 'En proceso'),
        ('Completado', 'Completado'),
        ('Cancelado', 'Cancelado'),
    )

    user = models.ForeignKey(User, on_delete=models.CASCADE)
    created_at = models.DateTimeField(default=datetime.now) 
    estado = models.CharField(max_length=20, choices=ESTADO_CHOICES, default='pendiente')

    def __str__(self):
        return str(self.id)
    
    @property
    def total(self):
        return self.lineapedido_set.aggregate(
            total=Sum(F("precio")*F("cantidad"), output_field=FloatField())
        )["total"]
    
    class Meta:
        db_table = 'pedidos'
        verbose_name = 'pedido'
        verbose_name_plural = 'pedidos'
        ordering = ['id']

class LineaPedido(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    pedido = models.ForeignKey(Pedido, on_delete=models.CASCADE)
    cantidad = models.IntegerField(default=1)
    created_at=models.DateTimeField(default=datetime.now)

    def __str__(self):
        return str(f'{self.cantidad} unidades de {self.producto.nombre}')
    
    class meta:
        db_table='lineapedido'
        verbose_name='Linea Pedido'
        verbose_name_plural='Lineas Pedidos'
        ordering=['id']
