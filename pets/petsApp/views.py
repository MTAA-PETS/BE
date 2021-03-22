from django.http.response import JsonResponse
from .models import User, Invoice, Details, Pet
from rest_framework.decorators import api_view
from .serializers import PetSerializer, DetailsSerializer
from rest_framework.response import Response
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from . import validators
import bcrypt
import datetime
import json
import os
from django.views.decorators.http import require_http_methods

logged = None
id_animal = 0

# REGISTRÁCIA


@csrf_exempt
@require_http_methods(["POST"])
def signIn(request):
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
        User.objects.create(
            nick=body["nick"], email=body["email"], birth=body["narodenie"], password=hashed.decode(), id_invoice=0)
    return JsonResponse(res, status=status_code)

# PRIHLASENIE


@csrf_exempt
@require_http_methods(["POST"])
def logIn(request):
    body = json.loads(request.body)
    user = None
    if "@" in body["nick/email"]:
        user = User.objects.filter(
            email=body["nick/email"]).first()
    else:
        user = User.objects.filter(nick=body["nick/email"]).first()

    if user and isinstance(body['heslo'], str):
        hashed = user.heslo.encode()
        if bcrypt.hashpw(body['heslo'].encode(), hashed) == hashed:
            logged = user
            return HttpResponse(status=200)
        else:
            return HttpResponse(status=401)
    else:
        return HttpResponse(status=401)

# DRUHY ZVIERAT


@api_view(['get'])
def pets(request):
    pets = Details.objects.order_by(
        'species').values_list('species').distinct()

    species = request.GET.get('species')
    if species != None:
        res = Details.objects.filter(
            species__iexact=species).values_list('kind').distinct()
        return HttpResponse(list(res), status=200)

    kind = request.GET.get('kind')
    if kind != None:
        res = Details.objects.filter(
            kind__iexact=kind).values_list('breed')
        return HttpResponse(list(res), status=200)

    breed = request.GET.get('breed')
    if breed != None:
        res = Details.objects.filter(
            breed__iexact=breed).values_list('name', 'age', 'weight', 'food', 'details', 'price')
        animal = res.values('id')
        id_animal = animal[0]['id']
        return JsonResponse(list(res.values('name', 'age', 'weight', 'food', 'details', 'price')), status=200, safe=False)

    return HttpResponse(list(pets), status=200)

# UPRAVA FONDU ZVIERATA


@api_view(['PUT'])
def addFond(request, num):
    id_animal = 122
    a = Pet.objects.get(pk=id_animal)
    a.fond = float(num)
    a.save()
    return HttpResponse(status=200)

# ADOPCIA (vytvorenie faktury)


@api_view(['POST'])
def invoice(request):
    id_pet = 246
    signed = 6
    price = Details.objects.get(pk=id_pet).price
    i = Invoice(id_pet=246, id_user=signed,
                date=datetime.datetime.now(), amount=price)
    i.save()
    return HttpResponse(status=201)

# PRIDANIE OBRAZKOV


@api_view(['PUT'])
def addImages(request):
    lowest = Pet.objects.earliest('id')
    highest = Pet.objects.latest('id')
    images = []
    count = 0
    for i in range(lowest.id, highest.id):
        count += 1
        for k in range(1, 3):
            if(os.path.exists(os.path.join(os.path.dirname(__file__), 'img\\', f'{count}_{k}.jpg'))):
                obr = os.path.join(os.path.dirname(__file__),
                                   'img\\', f'{count}_{k}.jpg')
                images.append(obr.replace('\\', '/'))
        a = Pet.objects.get(pk=i)
        a.imgs = images
        a.save()
        images = []

    return HttpResponse(status=200)
