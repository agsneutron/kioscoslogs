# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib.auth.models import User
from django.db import models
from django.forms.models import model_to_dict

# Create your models here.
from django.utils import timezone


class categoria(models.Model):
    nombre = models.CharField(verbose_name="Nombre", null=False, blank=False, max_length=50, db_index=True)


    class Meta:
        verbose_name = "Categoría"
        verbose_name_plural = "Categorías"
        ordering = ('nombre',)

    def __str__(self):
        return self.nombre

    def __unicode__(self):
        return self.nombre

    def to_serializable_dict(self):
        result = model_to_dict(self)
        return result


def directorio_imagenes(instance, filename):
    return '/'.join(['imagenes_opciones', str(instance.categoria.id), filename])

def directorio_videos(instance, filename):
    return '/'.join(['videos_opciones', str(instance.categoria.id), filename])


class opcion(models.Model):
    titulo = models.CharField(verbose_name="Titulo", null=False, blank=True, max_length=30,)
    imagen = models.FileField(upload_to=directorio_imagenes, verbose_name="Imagen", null=False, blank=False,)
    ruta = models.CharField(verbose_name="Ruta", null=False, blank=True, max_length=500)
    contenido = models.FileField(upload_to=directorio_videos, verbose_name="Contenido", null=False, blank=True, max_length=500)
    categoria = models.ForeignKey(categoria, verbose_name="Categoría", null=False, blank=False,)

    class Meta:
        verbose_name = "Opción"
        verbose_name_plural = "Opciones"
        #ordering = ('titulo',)

    def __str__(self):
        return self.titulo

    def __unicode__(self):
        return self.titulo

    def to_serializable_dict(self):
        result = model_to_dict(self)
        return result


