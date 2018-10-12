# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib.auth.models import User
from django.db import models
from django.forms.models import model_to_dict

# Create your models here.
from django.utils import timezone


class Log(models.Model):
    origen = models.CharField(verbose_name="Kiosco origen", null=False, blank=False, max_length=20)
    accion = models.CharField(verbose_name="Acción realizada", null=True, blank=True, max_length=500)
    date = models.DateTimeField(verbose_name="Fecha del evento", null=True, default=timezone.now)

    class Meta:
        verbose_name = "Log"
        verbose_name_plural = "Logs"
        ordering = ('origen',)

    def __str__(self):
        return self.origen

    def __unicode__(self):
        return self.origen

    def to_serializable_dict(self):
        result = model_to_dict(self)
        return result

