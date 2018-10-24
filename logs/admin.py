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

class LogAdmin(admin.ModelAdmin):
    model = Log
    list_display = ('origen', 'accion', 'date',)
    fields = ('origen', 'accion', 'date')
    search_fields = ('origen', 'accion')

admin.site.register(Log, LogAdmin)