
from django.contrib import admin
from django.urls import path
from petsApp import views

urlpatterns = [
    path('user/<int:id>/', views.getUser),
    path('user/signin/', views.signIn),
    path('user/login/', views.logIn),
    #path('user/logout/', views.signOut),
    path('user/addInvoice/', views.addInvoice),
    path('pets/', views.pets),
    path('pets/search/', views.searchPet),
    path('pets/addFond/<str:num>/<int:id>/', views.addFond),
    path('pets/addImages/', views.addImages),
    path('pets/delete/<int:id>/', views.delPet),
    path('invoice/<int:id>/<int:user>/', views.invoice),
]
