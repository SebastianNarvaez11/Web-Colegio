from django.core.paginator import Paginator
from django.shortcuts import render, get_object_or_404
from .models import Category, Post
from django.db.models import Q
# Create your views here.


def blog(request):
    queryset = request.GET.get("buscar")
    lista_posts = Post.objects.all()
    if queryset:
        lista_posts = Post.objects.filter(
            Q(titulo__icontains=queryset) |
            Q(descripcion__icontains=queryset)
        ).distinct()


    paginator = Paginator(lista_posts, 2)
    page = request.GET.get('page')
    posts = paginator.get_page(page)

    categorias = Category.objects.all()
    return render(request, 'blog/blog.html', {'lista_posts': lista_posts, 'categorias': categorias, 'posts': posts})


def detallepost(request, slug_post):
    post = get_object_or_404(Post, slug=slug_post)
    posts = Post.objects.all()
    categorias = Category.objects.all()
    return render(request, 'blog/detallepost.html', {'post': post, 'lista_posts': posts, 'categorias': categorias})


def category(request, id_categoria):
    categoria = get_object_or_404(Category, id=id_categoria)
    lista_posts = Post.objects.filter(categoria=categoria)
    queryset = request.GET.get("buscar")
    if queryset:
        lista_posts = Post.objects.filter(
            Q(titulo__icontains=queryset) |
            Q(descripcion__icontains=queryset)
        ).distinct()

    paginator = Paginator(lista_posts, 2)
    page = request.GET.get('page')
    posts = paginator.get_page(page)

    categorias = Category.objects.all()
    return render(request, 'blog/category.html', {'categoria': categoria, 'lista_posts': lista_posts, 'categorias': categorias, 'posts': posts})
