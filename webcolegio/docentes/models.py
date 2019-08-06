from django.db import models

# Create your models here.


class Materia(models.Model):
    nombre = models.CharField('Nombre', max_length=200)

    class Meta:
        verbose_name = 'Materia'
        verbose_name_plural = 'Materias'

    def __str__(self):
        return self.nombre


class Docente(models.Model):
    nombre = models.CharField('Nombre', max_length=15)
    apellido = models.CharField('Apellido', max_length=15)
    imagen = models.ImageField('Foto', upload_to='docentes')
    grados = models.CharField('Grados a los que enseña', max_length=20)
    informacion = models.TextField('Información', blank=True, null=True, max_length=100)
    materias = models.ManyToManyField(Materia, verbose_name = 'Materias', related_name='obtener_docentes')
    creacion = models.DateField('Fecha de creacion', auto_now_add=True)
    edicion = models.DateField('Fecha de edicion', auto_now=True)

    class Meta:
        verbose_name = 'Docente'
        verbose_name_plural = 'Docentes'

    def __str__(self):
        return self.nombre+" "+self.apellido 
