from django.db import models

# Create your models here.


class Link(models.Model):
    key = models.SlugField('Nombre clave', max_length=100, unique=True)
    nombre = models.CharField('Nombre', max_length=100)
    url = models.URLField('Enlace', max_length=200, blank=True, null=True)
    creacion = models.DateField('Fecha de creacion', auto_now_add=True)
    edicion = models.DateField('Fecha de edicion', auto_now=True)

    class Meta:
        verbose_name = 'Enlace'
        verbose_name_plural = 'Enlaces'
        ordering = ['-creacion']

    def __str__(self):
        return self.nombre
