from django.shortcuts import render
from .models import Docente, Materia
# Create your views here.


def docentes(request):
    docentes = Docente.objects.all()
    return render(request, 'docentes/docentes.html',{'docentes':docentes})
