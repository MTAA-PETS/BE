from django.db import models
from django.contrib.postgres.fields import ArrayField
from django.core.validators import int_list_validator


class User(models.Model):
    nick = models.CharField(max_length=30, unique=True)
    email = models.EmailField(max_length=50, unique=True)
    birth = models.DateField()
    password = models.CharField(max_length=255)
    id_invoice =ArrayField(models.IntegerField(), size=100)

class Invoice(models.Model):
    id_pet = models.IntegerField()
    id_user = models.IntegerField()
    date = models.DateTimeField()
    amount = models.DecimalField(max_digits=6, decimal_places=2)


class Details(models.Model):
    species = models.CharField(max_length=20)  # druh
    kind = models.CharField(max_length=20)  # trieda
    breed = models.CharField(max_length=50)  # plemeno
    name = models.CharField(max_length=20)
    age = models.IntegerField()
    weight = models.DecimalField(max_digits=6, decimal_places=2)
    food = models.CharField(max_length=50)
    info = models.TextField()
    price = models.DecimalField(max_digits=6, decimal_places=2)


class Pet(models.Model):
    id_user = models.IntegerField()
    fond = models.DecimalField(max_digits=6, decimal_places=2)
    id_details = models.IntegerField()
    imgs = ArrayField(models.CharField(max_length=255, blank=True), size=4)
