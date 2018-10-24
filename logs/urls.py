# -*- coding: utf-8 -*-
from django.conf.urls import url
from django.http.response import HttpResponse

import api

urlpatterns = [

    url(r'^generar_log/$', api.GenerarLog.as_view()),



]