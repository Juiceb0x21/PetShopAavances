# Generated by Django 3.1.2 on 2023-06-25 03:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0004_pedido_seguimiento'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='pedido',
            name='seguimiento',
        ),
        migrations.DeleteModel(
            name='TipoSeguimiento',
        ),
    ]
