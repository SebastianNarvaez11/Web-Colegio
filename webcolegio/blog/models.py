from django.db import models
from django.utils.timezone import now
from django.contrib.auth.models import User
import re

# Create your models here.

class Category(models.Model):
    nombre = models.CharField('Nombre', max_length=100)
    creacion = models.DateField('Fecha de creacion', auto_now_add=True)
    edicion = models.DateField('Fecha de modificacion', auto_now=True)

    class Meta:
        verbose_name = 'Categoria'
        verbose_name_plural = 'Categorias'
        ordering = ['-creacion']

    def __str__(self):
        return self.nombre


class Post(models.Model):
    titulo = models.CharField('Titulo', max_length=200)
    descripcion = models.TextField('Descripcion', max_length=300, blank=True, null=True)
    contenido = models.TextField('Contenido')
    imagen = models.ImageField('Imagen', upload_to='blog') # autor enlazado con los autores de django
    autor = models.ForeignKey(User, verbose_name='Autor', on_delete=models.CASCADE)
    categoria = models.ManyToManyField(Category, verbose_name='Categoria', related_name="obtener_posts")
    slug = models.SlugField('Slug/Url')
    publicacion = models.DateField('Fecha de publicacion', default = now)
    creacion = models.DateField('Fecha de creacion', auto_now_add=True)
    edicion = models.DateField('Fecha de modificacion', auto_now=True)

    def save(self, *args, **kwargs):
        self.slug = re.sub(r'[^a-z0-9+]', '-', self.titulo.lower())
        super(Post, self).save(*args, **kwargs)

    class Meta:
        verbose_name = 'Post'
        verbose_name_plural = 'Posts'
        ordering = ['-creacion']

    def __str__(self):
        return self.titulo
