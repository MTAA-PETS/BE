
from django.contrib import admin
from django.urls import path
from petsApp import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('animals/', views.fetchAnimals),
    path('user/', views.newUser)
]
