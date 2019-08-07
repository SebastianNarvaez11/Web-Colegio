from django.contrib import admin
from django.core.mail import send_mail
from .models import Category, Post
# Register your models here.


class CategoryAdmin(admin.ModelAdmin):
    readonly_fields = ('creacion', 'edicion')


class PostAdmin(admin.ModelAdmin):
    exclude = ['autor', 'slug']

    readonly_fields = ('publicacion', 'creacion', 'edicion')
    # muestra la tabla con los campos que se le pasen
    list_display = ('titulo', 'autor', 'publicacion', 'post_categories')
    ordering = ('autor', 'publicacion')
    search_fields = ('titulo', 'autor__username',
                     'contenido', 'categoria__nombre')
    date_hierarchy = 'publicacion'
    # pone filtro en la parte derecha
    list_filter = ('autor__username', 'categoria__nombre')

    # Sobrecrive el metodo save, asignando el usuario logueado al autor que realiza el post
    def save_model(self, request, obj, form, change):
        obj.autor = request.user
        send_mail(
            'Subject here',
            'Here is the message.',
            'from@example.com',
            [''],
            fail_silently=False,
        )
        super().save_model(request, obj, form, change)

    def post_categories(self, obj):
        # forma de obtener las categorias
        return ", ".join([c.nombre for c in obj.categoria.all().order_by("nombre")])
    # cambia el emcabezado de la tabla
    post_categories.short_description = "Categorias"


admin.site.register(Category, CategoryAdmin)
admin.site.register(Post, PostAdmin)
