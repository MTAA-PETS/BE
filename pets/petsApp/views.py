from django.http.response import JsonResponse
from .models import Vlastnosti, Zviera, Pouzivatel, Faktura
from rest_framework.decorators import api_view
from .serializers import AnimalSerializer, VlastnostiSerializer
from rest_framework.response import Response
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from . import validators
from django.contrib.auth import authenticate
import bcrypt
import datetime
import json
import os
from django.views.decorators.http import require_http_methods
from django.shortcuts import render

signed = None
id_animal = 0

# REGISTRÁCIA


@csrf_exempt
@require_http_methods(["POST"])
def newUser(request):
    res = {}
    status_code = 200
    body = json.loads(request.body)
    try:
        req = json.loads(request.body.decode("utf-8"))
    except Exception as e:
        res["details"] = "Invalid request body"
    validation = validators.validate_api(req)
    if not validation["success"]:
        res["errors"] = validation["errors"]
        status_code = 400
    else:
        res["details"] = "Validation passed"
        hashed = bcrypt.hashpw(body['heslo'].encode(), bcrypt.gensalt())
        Pouzivatel.objects.create(
            nick=body["nick"], email=body["email"], narodenie=body["narodenie"], heslo=hashed.decode(), id_faktury=0)
    return JsonResponse(res, status=status_code)

# PRIHLASENIE


@csrf_exempt
@require_http_methods(["POST"])
def signIn(request):
    body = json.loads(request.body)
    pouzivatel = None
    if "@" in body["nick/email"]:
        pouzivatel = Pouzivatel.objects.filter(
            email=body["nick/email"]).first()
    else:
        pouzivatel = Pouzivatel.objects.filter(nick=body["nick/email"]).first()

    if pouzivatel and isinstance(body['heslo'], str):
        hashed = pouzivatel.heslo.encode()
        if bcrypt.hashpw(body['heslo'].encode(), hashed) == hashed:
            signed = pouzivatel
            return HttpResponse(status=200)
        else:
            return HttpResponse(status=401)
    else:
        return HttpResponse(status=401)

# DRUHY ZVIERAT


@api_view(['get'])
def animals(request):
    animals = Vlastnosti.objects.order_by(
        'druh').values_list('druh').distinct()

    species = request.GET.get('species')
    if species != None:
        res = Vlastnosti.objects.filter(
            druh__iexact=species).values_list('typ').distinct()
        return HttpResponse(list(res), status=200)

    typeanimals = request.GET.get('type')
    if typeanimals != None:
        res = Vlastnosti.objects.filter(
            typ__iexact=typeanimals).values_list('plemeno')
        return HttpResponse(list(res), status=200)

    plemeno = request.GET.get('breed')
    if plemeno != None:
        res = Vlastnosti.objects.filter(
            plemeno__iexact=plemeno).values_list('meno', 'vek', 'vaha', 'potrava', 'popis', 'cena')
        animal = res.values('id')
        id_animal = animal[0]['id']
        return JsonResponse(list(res.values('meno', 'vek', 'vaha', 'potrava', 'popis', 'cena')), status=200, safe=False)

    return HttpResponse(list(animals), status=200)

# UPRAVA FONDU ZVIERATA


@api_view(['PUT'])
def addFond(request, num):
    id_animal = 122
    a = Zviera.objects.get(pk=id_animal)
    a.fond = float(num)
    a.save()
    return HttpResponse(status=200)

# ADOPCIA (vytvorenie faktury)


@api_view(['POST'])
def invoice(request):
    id_zviera = 246
    signed = 6
    cena = Vlastnosti.objects.get(pk=id_zviera).cena
    i = Faktura(id_zviera=246, id_pouzivatel=signed,
                datum=datetime.datetime.now(), suma=cena)
    i.save()
    return HttpResponse(status=201)

# PRIDANIE OBRAZKOV


@api_view(['PUT'])
def addImages(request):
    lowest = Zviera.objects.earliest('id')
    highest = Zviera.objects.latest('id')
    imgs = []
    count = 0
    for i in range(lowest.id, highest.id):
        count += 1
        for k in range(1, 3):
            if(os.path.exists(os.path.join(os.path.dirname(__file__), 'img\\', f'{count}_{k}.jpg'))):
                obr = os.path.join(os.path.dirname(__file__),
                                   'img\\', f'{count}_{k}.jpg')
                imgs.append(obr.replace('\\', '/'))
        a = Zviera.objects.get(pk=i)
        a.obrazky = imgs
        a.save()
        imgs = []

    return HttpResponse(status=200)
