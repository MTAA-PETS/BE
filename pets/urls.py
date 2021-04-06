
from django.contrib import admin
from django.urls import path
from petsApp import views

urlpatterns = [
    path('user/<int:id>/', views.getUser),
    path('user/signup/', views.signUp),
    path('user/login/', views.logIn),
    path('user/logout/', views.logOut),
    path('user/addInvoice/', views.addInvoice),
    path('pets/', views.pets),
    path('pets/search/', views.searchPet),
    path('pets/addFond/', views.addFond),
    path('pets/addImages/', views.addImages),
    path('pets/delete/', views.delPet),
    path('invoice/', views.invoice),
]
