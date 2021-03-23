from petsApp.filters import DynamicSearchFilter
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
from rest_framework import filters
import json
import os
from django.views.decorators.http import require_http_methods

# GET user info


@api_view(['GET'])
def getUser(request, id):
    u = User.objects.get(id=id)
    # id faktury, meno zvery, datum, cena
    invoices = u.id_invoice
    res = []
    for i in invoices:
        invoice = Invoice.objects.get(id=i)
        pet = Details.objects.get(id=invoice.id_pet)
        name = pet.name
        res.append({"id:": i, "name:": name,
                    "date:": invoice.date, "amount:": invoice.amount})
    return JsonResponse({"nick:": u.nick, "email": u.email, "birth": u.birth, "invoices": res}, status=200, safe=False)

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
        hashed = bcrypt.hashpw(body['password'].encode(), bcrypt.gensalt())
        user = User.objects.create(
            nick=body["nick"], email=body["email"], birth=body["birth"], password=hashed.decode(), id_invoice=0)
        user.save()
        res["details"] = user.id
    return JsonResponse(res, status=status_code)

# PRIHLASENIE


@csrf_exempt
@require_http_methods(["POST"])
def logIn(request):
    body = json.loads(request.body)
    user = None
    if "@" in body['nick/email']:
        user = User.objects.filter(
            email=body['nick/email']).first()
    else:
        user = User.objects.filter(nick=body['nick/email']).first()

    if user and isinstance(body['password'], str):
        hashed = user.password.encode()
        if bcrypt.hashpw(body['password'].encode(), hashed) == hashed:
            return HttpResponse(user.id, status=200)
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
            breed__iexact=breed).values_list('name', 'age', 'weight', 'food', 'info', 'price')
        animal = res.values('id')
        id_animal = animal[0]['id']
        return JsonResponse(list(res.values('id', 'name', 'age', 'weight', 'food', 'info', 'price')), status=200, safe=False)

    return HttpResponse(list(pets), status=200)


# UPRAVA FONDU ZVIERATA


@api_view(['PUT'])
def addFond(request, num, id):
    a = Pet.objects.get(pk=id)
    a.fond = float(num)
    a.save()
    return HttpResponse(status=200)

# ADOPCIA (vytvorenie faktury)


@api_view(['POST'])
def invoice(request, id, user):
    price = Details.objects.get(pk=id).price
    i = Invoice(id_pet=id, id_user=user,
                date=datetime.datetime.now(), amount=price)
    i.save()
    return HttpResponse(status=201)

# ADOPCIA (priradenie faktury)


@api_view(['PUT'])
def addInvoice(request):
    i = Invoice.objects.get(id=1)
    i_userId = i.id_user
    if(User.objects.filter(id=i_userId).exists()):
        u = User.objects.get(id=i_userId)
        u.id_invoice.append(i.id)
        u.save()
        return HttpResponse(status=200)
    else:
        return HttpResponse(status=400)


# PRIDANIE OBRAZKOV


@api_view(['PUT'])
def addImages(request):
    lowest = Pet.objects.earliest('id')
    highest = Pet.objects.latest('id')
    images = []
    count = 0
    for i in range(lowest.id, highest.id+1):
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

# FILTROVANIE ZVIERATA


@api_view(['GET'])
def searchPet(request):
    
    if request.method == 'GET':
        filters = {}
        for key, value in request.GET.items():
            if value != '':
                filters[key] = value
        filter_list = Details.objects.filter(
            **filters).values_list('id', 'breed')
        return JsonResponse(list(filter_list.values('id', 'breed')), status=200, safe=False)


# DELETE ADOPTOVANEHO
@api_view(['DELETE'])
def delPet(request, id):
    if(Pet.objects.filter(id=id).exists()):
        Pet.objects.filter(id=id).delete()
        Details.objects.filter(id=id).delete()
        return HttpResponse(status=200)
    else:
        return HttpResponse(status=404)
