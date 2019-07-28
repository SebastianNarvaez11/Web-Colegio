from django.shortcuts import render, get_object_or_404
from .models import Service
# Create your views here.

def services(request):
    servicios = Service.objects.filter( estado = True)
    return render(request,'services/services.html',{'lista_servicios':servicios})

def detalleservicio(request, slug_servicio):
    service = get_object_or_404(Service, slug = slug_servicio)
    return render(request,'services/detalleservicio.html',{'servicio':service})
