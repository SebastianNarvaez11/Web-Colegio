from django.contrib import admin
from .models import Service


class ServiceAdmin(admin.ModelAdmin):
    readonly_fields = ('creacion', 'edicion')
    prepopulated_fields = {'slug': ('titulo',)}


admin.site.register(Service, ServiceAdmin)
