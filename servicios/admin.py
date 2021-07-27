# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from functools import partial

from django.contrib import admin

# Register your models here.
from django.contrib import messages
from django.core.exceptions import ValidationError
from django.db.models import Q
from django.db.models.signals import post_save
from django.dispatch.dispatcher import receiver
from django.forms import modelformset_factory

from models import *

from django.urls import reverse
from django.utils.html import format_html

class CategoriaAdmin(admin.ModelAdmin):
    model = categoria
    actions = None
    list_display = ('nombre',)
    fields = ('nombre',)
    search_fields = ('nombre',)


class OpcionAdmin(admin.ModelAdmin):
    model = opcion
    actions = None
    list_display = ('categoria', 'titulo', 'imagen', 'ruta', 'contenido',)
    fields = ('categoria', 'titulo', 'imagen', 'ruta', 'contenido',)
    search_fields = ('categoria', 'titulo',)


admin.site.register(categoria, CategoriaAdmin)
admin.site.register(opcion, OpcionAdmin)
