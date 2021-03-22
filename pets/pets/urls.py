
from django.contrib import admin
from django.urls import path
from petsApp import views

urlpatterns = [
    # path('user/', views.getUser),
    path('user/signin/', views.signIn),
    path('user/login/', views.logIn),
    #path('user/signout/', views.signOut),
    #path('user/addInvoice/<int:num>', views.addInvoice),
    path('pets/', views.pets),
    #path('pets/search/', views.search),
    path('pets/addFond/<str:num>/', views.addFond),
    path('pets/addImages/', views.addImages),
    #path('pets/delete/{int:num}/', views.delPet),
    path('invoice/', views.invoice),
]
