from django.db import models
import re
# Create your models here.


class Service(models.Model):
    titulo = models.CharField('Titulo', max_length=200, blank=False, null=False)
    slug = models.SlugField('Slug/Url')
    descripcion = models.CharField('Descripción', max_length=100, blank=False, null=False  )
    contenido = models.TextField('Contenido')
    mensualidad = models.IntegerField('Mensualidad')
    matricula = models.IntegerField('Matricula')
    imagen = models.ImageField('Imagen', upload_to='services')
    jornada = models.CharField('Jornada(s)', max_length=100, blank=True, null=True)
    index = models.BooleanField('Mostrar en el inicio', default=True)
    estado = models.BooleanField('Publicado/Oculto', default=True)
    creacion = models.DateField('Fecha de creacion', auto_now_add=True)
    edicion = models.DateField('Fecha de edicion', auto_now=True)

    def save(self, *args, **kwargs):#genera el slug desde el titulo - importar re
        self.slug = re.sub(r'[^a-z0-9+]', '-', self.titulo.lower())
        super(Service, self).save(*args, **kwargs)

    class Meta:
        verbose_name = 'Servicio'
        verbose_name_plural = 'Servicios'
        ordering = ['-creacion']

    def __str__(self):
        return self.titulo
