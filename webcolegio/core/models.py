from django.db import models

# Create your models here.


class Colegio(models.Model):
    nombre = models.CharField('Nombre', max_length=100,)
    lema = models.CharField('Lema', max_length=300, blank=True, null=True)
    logo = models.ImageField('Logo', upload_to='colegio',blank = True, null = True )
    email = models.EmailField('Email', max_length = 200)
    direccion = models.CharField('Dirección', max_length=300,)
    telefono = models.CharField('Telefono', max_length=100)
    horarios = models.CharField('Horarios', max_length=500, blank=True, null=True)
    mision = models.TextField('Misión')
    vision = models.TextField('Vision')
    creacion = models.DateField('Fecha de creacion', auto_now_add=True)
    edicion = models.DateField('Fecha de edicion', auto_now=True)

    class Meta:
        verbose_name = 'Colegio'
        verbose_name_plural = 'Colegio'

    def __str__(self):
        return self.nombre