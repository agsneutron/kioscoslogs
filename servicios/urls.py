# -*- coding: utf-8 -*-
from django.conf.urls import url
from django.http.response import HttpResponse

import api

urlpatterns = [

    url(r'^menu/$', api.GetOpciones.as_view()),



]