from django.shortcuts import render
# Create your views here.

def docentes(request):
    return render(request,'docentes/docentes.html')