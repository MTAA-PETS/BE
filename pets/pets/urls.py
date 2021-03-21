
from django.contrib import admin
from django.urls import path
from petsApp import views

urlpatterns = [
    path('user/', views.newUser),
    path('user/signin/', views.signIn),
    path('animals/', views.animals),
    path('animals/addFond/<str:num>/', views.addFond),
    path('animals/addImages/', views.addImages),
    path('invoice/', views.invoice),
]
