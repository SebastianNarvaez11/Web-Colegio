from django.contrib import admin
from .models import Category,Post

# Register your models here.
class CategoryAdmin(admin.ModelAdmin):
    readonly_fields = ('creacion','edicion')

class PostAdmin(admin.ModelAdmin):
    readonly_fields = ('publicacion','creacion','edicion')
    list_display = ('titulo','autor','publicacion','post_categories')#muestra la tabla con los campos que se le pasen
    ordering = ('autor','publicacion')
    search_fields = ('titulo','autor__username','contenido','categoria__nombre')
    date_hierarchy = 'publicacion'
    list_filter = ('autor__username','categoria__nombre')#pone filtro en la parte derecha

    def post_categories(self, obj):
        return ", ".join([c.nombre for c in obj.categoria.all().order_by("nombre")])#forma de obtener las categorias 
    post_categories.short_description = "Categorias"#cambia el emcabezado de la tabla


admin.site.register(Category, CategoryAdmin)
admin.site.register(Post, PostAdmin)