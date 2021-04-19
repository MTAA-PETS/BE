
from django.contrib import admin
from django.urls import path
from petsApp import views

urlpatterns = [
    path('user/<int:id>/', views.getUser),
    path('user/addImage/', views.addImage),
    path('user/getImage/<int:id>/', views.getImage),
    path('user/signup/', views.signUp),
    path('user/login/', views.logIn),
    path('user/logout/', views.logOut),
    path('user/addInvoice/', views.addInvoice),
    path('pets/', views.pets),  # toto
    path('pets/search/', views.searchPet),  # toto
    path('pets/addFond/<int:id>', views.addFond),
    path('pets/fond/<pet>/', views.getFond),
    path('pets/delete/', views.delPet),
    path('invoice/', views.invoice),
]
