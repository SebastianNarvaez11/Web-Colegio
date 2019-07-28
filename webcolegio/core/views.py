from django.shortcuts import render
from .models import Colegio
from services.models import Service

# Create your views here.

def index(request):
    servicios = Service.objects.filter(index = True)
    return render(request,'core/index.html',{'lista_servicios':servicios})

def about(request):
    return render(request,'core/about.html')

def service(request):
    return render(request,'core/services.html')

def blog(request):
    return render(request,'core/blog.html')

def contact(request):
    return render(request,'core/contact.html')
