from django.urls import path
from .import views

urlpatterns = [
    path('', views.blog, name='blog'),
    path('<slug:slug_post>/', views.detallepost, name = 'detallepost'),
    path('category/<int:id_categoria>/',views.category, name = 'categoria'),
]
