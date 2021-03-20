from django.db import models
from django.db.models.lookups import PostgresOperatorLookup


class Pouzivatel(models.Model):
    nick = models.CharField(max_length=30)
    email = models.EmailField(max_length=50)
    narodenie = models.CharField(max_length=20)
    heslo = models.CharField(max_length=255)
    id_faktury = models.IntegerField()


class Faktura(models.Model):
    id_zviera = models.IntegerField()
    id_pouzivatel = models.IntegerField()
    datum = models.CharField(max_length=10)
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
    obrazky = models.CharField(max_length=255)
