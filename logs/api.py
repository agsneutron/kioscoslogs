# coding=utf-8

# Librerías propias del proyecto.
import json
import urllib

from xml.etree import ElementTree as ET

from django.db.models import Q
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout

# Para responder mediante http.
from django.http.response import HttpResponse

# Vistas genéricas de Django.
from django.views.generic.list import ListView

# Para poder manipular objetos datetime.
from datetime import datetime, timedelta

# Para obtener el número de días hábiles ente 2 fechas.
import numpy as numpy



from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator


# Para obtener los días hábiles entre dos fechas.
from logs.models import Log

# Decoradores
from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator



@method_decorator(csrf_exempt, name='dispatch')
class GenerarOrdenInterna(ListView):
    def post(self, request, *args, **kwargs):

        # Obligatorios
        origen_p = request.POST.get("origen")
        accion_p = request.POST.get("accion")


        dia_actual = datetime.today()


        # Generando la orden de pago.
        log_kiosco = Log(
            origen=origen_p,
            accion=accion_p,
            date=dia_actual
        )

        log_kiosco.save()


        print "ID is: " + str(orden_de_pago.id)
        print "Folio is: " + str(orden_de_pago.folio)

        return HttpResponse(Utilities.json_to_dumps({
            "estatus": "True",
            "mensaje": "Se generó exitosamente la orden interna.",
            "data": {
                "id": log_kiosco.id
            }
        }), 'application/json; charset=utf-8')