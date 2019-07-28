from django.shortcuts import render
from .models import Service
# Create your views here.

def services(request):
    servicios = Service.objects.all()
    return render(request,'services/services.html',{'lista_servicios':servicios})

def detalleservicio(request, slug):
    service = Service.objects.get(slug = slug)
    return render(request,'services/detalleservicio.html',{'servicio':service})
