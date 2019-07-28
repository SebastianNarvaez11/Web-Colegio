from .models import Colegio

def ctx_dict(request):
    return {'COLEGIO':Colegio.objects.get()}
