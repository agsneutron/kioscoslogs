# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2021-07-26 20:03
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='categoria',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(db_index=True, max_length=50, verbose_name='Nombre')),
            ],
            options={
                'ordering': ('nombre',),
                'verbose_name': 'Categor\xeda',
                'verbose_name_plural': 'Categor\xedas',
            },
        ),
        migrations.CreateModel(
            name='opcion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(blank=True, max_length=27, verbose_name='Titulo')),
                ('imagen', models.CharField(max_length=500, verbose_name='Imagen')),
                ('ruta', models.CharField(blank=True, max_length=500, verbose_name='Ruta')),
                ('contenido', models.CharField(blank=True, max_length=500, verbose_name='Contenido')),
                ('categoria', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='servicios.categoria', verbose_name='Categor\xeda')),
            ],
            options={
                'verbose_name': 'Opci\xf3n',
                'verbose_name_plural': 'Opciones',
            },
        ),
    ]
