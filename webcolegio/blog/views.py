from django.shortcuts import render, get_object_or_404
from .models import Category,Post

# Create your views here.

def blog(request):
    posts = Post.objects.all()
    categorias = Category.objects.all()
    return render(request,'blog/blog.html',{'lista_posts':posts, 'categorias':categorias})

def detallepost(request,slug_post):
    post = get_object_or_404(Post, slug = slug_post)
    posts = Post.objects.all()
    categorias = Category.objects.all()
    return render(request,'blog/detallepost.html',{'post':post,'lista_posts':posts,'categorias':categorias})
