from django.contrib import admin
from .models import Service
from django.utils.text import slugify


class ServiceAdmin(admin.ModelAdmin):
    exclude = ['slug']
    readonly_fields = ('creacion', 'edicion')


admin.site.register(Service, ServiceAdmin)
