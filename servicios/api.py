# coding=utf-8

# Librerías propias del proyecto.
import json
import urllib
from lib.utilities import Utilities

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




from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator


# Para obtener los días hábiles entre dos fechas.
from servicios.models import opcion, categoria

# Decoradores
from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator



@method_decorator(csrf_exempt, name='dispatch')
class GetOpciones(ListView):
    def get(self, request, *args, **kwargs):

        # Obligatorios
        valor = request.GET.get("valor")

        opcion_por_categoria = opcion.objects.filter(categoria__nombre=valor)

        response =[]
        for opc in opcion_por_categoria:
            opc = {
                "titulo": str(opc.titulo),
                "imagen": str(opc.imagen.name),
                "ruta": str(opc.ruta),
                "contenido": str(opc.contenido.name),
            }

            response.append(opc)

        return HttpResponse(Utilities.json_to_dumps({
            "estatus": "True",
            "mensaje": "Se generó exitosamente la consulta",
            "data": response

        }), 'application/json; charset=utf-8')