from django.db import models
from django.db.models.lookups import PostgresOperatorLookup
from django.contrib.postgres.fields import ArrayField


class Pouzivatel(models.Model):
    nick = models.CharField(max_length=30, unique=True)
    email = models.EmailField(max_length=50, unique=True)
    narodenie = models.DateField()
    heslo = models.CharField(max_length=255)
    id_faktury = models.IntegerField()


class Faktura(models.Model):
    id_zviera = models.IntegerField()
    id_pouzivatel = models.IntegerField()
    datum = models.DateTimeField()
    suma = models.DecimalField(max_digits=6, decimal_places=2)


class Vlastnosti(models.Model):
    druh = models.CharField(max_length=20)
    typ = models.CharField(max_length=20)
    plemeno = models.CharField(max_length=50)
    meno = models.CharField(max_length=20)
    vek = models.IntegerField()
    vaha = models.DecimalField(max_digits=6, decimal_places=2)
    potrava = models.CharField(max_length=50)
    popis = models.TextField()
    cena = models.DecimalField(max_digits=6, decimal_places=2)


class Zviera(models.Model):
    id_pouzivatel = models.IntegerField()
    fond = models.DecimalField(max_digits=6, decimal_places=2)
    id_vlastnosti = models.IntegerField()
    obrazky = ArrayField(models.CharField(
        max_length=255, blank=True), size=4)
