# Generated by Django 3.1.2 on 2023-07-08 22:51

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0005_auto_20230708_1851'),
    ]

    operations = [
        migrations.RenameField(
            model_name='tiposeguimiento',
            old_name='seguimiento',
            new_name='estado',
        ),
    ]
