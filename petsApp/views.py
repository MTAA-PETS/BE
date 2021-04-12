from petsApp.filters import DynamicSearchFilter
from django.http.response import JsonResponse
from .models import User, Invoice, Details, Pet
from rest_framework.decorators import api_view, permission_classes
from .serializers import PetSerializer, DetailsSerializer
from rest_framework.response import Response
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from . import validators
import bcrypt
from datetime import datetime, date
from rest_framework import filters
import json
import os
from django.views.decorators.http import require_http_methods
import base64
from django.core import serializers
from django.core.serializers.json import DjangoJSONEncoder

# GET user info


@api_view(['GET', 'OPTIONS'])
def getUser(request, id):
    u = User.objects.get(id=id)
    invoices = u.id_invoice
    res = []
    for i in invoices:
        invoice = Invoice.objects.get(id=i)
        pet = Details.objects.get(id=invoice.id_pet)
        name = pet.name
        res.append({"id:": i, "name:": name,
                    "date:": invoice.date, "amount:": invoice.amount})
    response = JsonResponse({"nick:": u.nick, "email": u.email,
                             "birth": u.birth, "invoices": res}, status=200, safe=False)
    response["Access-Control-Allow-Origin"] = "*"
    response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
    response["Access-Control-Max-Age"] = "1000"
    response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
    return response
# REGISTRÁCIA


@csrf_exempt
@require_http_methods(["POST", "OPTIONS"])
def signUp(request):

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
        if User.objects.filter(nick=body["nick"]).exists() or User.objects.filter(email=body["email"]).exists():
            res["errors"] = "Duplicate values"
            status_code = 403
        else:
            days_in_year = 365.2425
            age = int(
                (datetime.now() - datetime.strptime(body['birth'], '%Y-%m-%d')).days / days_in_year)
            if (age >= 18):
                hashed = bcrypt.hashpw(
                    body['password'].encode(), bcrypt.gensalt())
                id_inv = []
                myuser = User.objects.create(
                    nick=body["nick"], email=body["email"], birth=body["birth"], password=hashed.decode(), id_invoice=id_inv)
                myuser.save()
                response = JsonResponse(myuser.id, status=200, safe=False)
                response["Access-Control-Allow-Origin"] = "*"
                response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
                response["Access-Control-Max-Age"] = "1000"
                response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
                return response
            else:
                res["errors"] = "Not adult"
                status_code = 400
    response = JsonResponse(res, status=status_code)
    response["Access-Control-Allow-Origin"] = "*"
    response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
    response["Access-Control-Max-Age"] = "1000"
    response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
    return response

# PRIHLASENIE


@csrf_exempt
@require_http_methods(["POST", "OPTIONS"])
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
            response = JsonResponse({"id": user.id}, status=200)
            response["Access-Control-Allow-Origin"] = "*"
            response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
            response["Access-Control-Max-Age"] = "1000"
            response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
            return response
        else:
            response = HttpResponse(status=401)
            response["Access-Control-Allow-Origin"] = "*"
            response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
            response["Access-Control-Max-Age"] = "1000"
            response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
            return response
    else:
        response = HttpResponse(status=401)
        response["Access-Control-Allow-Origin"] = "*"
        response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
        response["Access-Control-Max-Age"] = "1000"
        response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
        return response


@csrf_exempt
@require_http_methods(["POST", "OPTIONS"])
def logOut(request):
    body = json.loads(request.body)
    u = body['id']
    response = JsonResponse({"id": u}, status=200)
    response["Access-Control-Allow-Origin"] = "*"
    response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
    response["Access-Control-Max-Age"] = "1000"
    response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
    return response

# DRUHY ZVIERAT


@api_view(['GET', 'OPTIONS'])
def pets(request):
    pets = Details.objects.order_by(
        'species').values_list('species').distinct()

    species = request.GET.get('species')
    if species != None:
        res = Details.objects.filter(
            species__icontains=species).values_list('kind').distinct()
        response = JsonResponse(list(res), status=200, safe=False)
        response["Access-Control-Allow-Origin"] = "*"
        response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
        response["Access-Control-Max-Age"] = "1000"
        response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
        return response

    kind = request.GET.get('kind')
    if kind != None:
        res = Details.objects.filter(
            kind__icontains=kind).values_list('breed')
        response = JsonResponse(list(res), status=200, safe=False)
        response["Access-Control-Allow-Origin"] = "*"
        response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
        response["Access-Control-Max-Age"] = "1000"
        response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
        return response

    breed = request.GET.get('breed')
    if breed != None:
        res = Details.objects.filter(
            breed__icontains=breed).values_list('name', 'age', 'weight', 'food', 'info', 'price')
        response = JsonResponse(list(res.values(
            'id', 'name', 'age', 'weight', 'food', 'info', 'price')), status=200, safe=False)
        response["Access-Control-Allow-Origin"] = "*"
        response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
        response["Access-Control-Max-Age"] = "1000"
        response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
        return response

    response = JsonResponse(list(pets), status=200, safe=False)
    response["Access-Control-Allow-Origin"] = "*"
    response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
    response["Access-Control-Max-Age"] = "1000"
    response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
    return response


# UPRAVA FONDU ZVIERATA


@api_view(['PUT', 'OPTIONS'])
def addFond(request):
    body = json.loads(request.body)
    num = float(body['amount'])
    if num < 5.0:
        return HttpResponse(status=422)
    id = body['id']
    a = Pet.objects.get(pk=id)
    amount = a.fond
    a.fond = num + float(amount)
    a.save()
    response = HttpResponse(status=200)
    response["Access-Control-Allow-Origin"] = "*"
    response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
    response["Access-Control-Max-Age"] = "1000"
    response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
    return response

# ADOPCIA (vytvorenie faktury)


@api_view(['POST', 'OPTIONS'])
def invoice(request):
    body = json.loads(request.body)
    price = Details.objects.get(pk=body['id_pet']).price
    i = Invoice(id_pet=body['id_pet'], id_user=body['id_user'],
                date=datetime.now(), amount=price)
    i.save()
    response = HttpResponse(status=201)
    response["Access-Control-Allow-Origin"] = "*"
    response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
    response["Access-Control-Max-Age"] = "1000"
    response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
    return response

# ADOPCIA (priradenie faktury)


@api_view(['PUT', 'OPTIONS'])
def addInvoice(request):
    i = Invoice.objects.latest('id')
    i_userId = i.id_user
    if(User.objects.filter(id=i_userId).exists()):
        u = User.objects.get(id=i_userId)
        u.id_invoice.append(i.id)
        u.save()
        response = HttpResponse(status=200)
        response["Access-Control-Allow-Origin"] = "*"
        response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
        response["Access-Control-Max-Age"] = "1000"
        response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
        return response
    else:
        response = HttpResponse(status=400)
        response["Access-Control-Allow-Origin"] = "*"
        response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
        response["Access-Control-Max-Age"] = "1000"
        response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
        return response

# PRIDANIE OBRAZKOV


@api_view(['PUT', 'OPTIONS'])
def addImages(request):
    lowest = Pet.objects.earliest('id')
    highest = Pet.objects.latest('id')
    images = []
    count = 0
    #img = base64.encodestring(open('C:/Users/Lucia/Desktop/FIIT/6.Semester/MTAA/Pets_App/pets/petsApp/img/1_1.jpg', 'rb').read())
    for i in range(lowest.id, highest.id+1):
        count += 1
        for k in range(1, 3):
            if(os.path.exists(os.path.join(os.path.dirname(__file__), 'img\\', f'{count}_{k}.jpg'))):
                obr = os.path.join(os.path.dirname(__file__),
                                   'img\\', f'{count}_{k}.jpg')
                path = obr.replace('\\', '/')
                img = base64.encodestring(open(path, 'rb').read())
                images.append(img)
        a = Pet.objects.get(pk=i)
        a.imgs = images
        a.save()
        images = []

    response = HttpResponse(status=200)
    response["Access-Control-Allow-Origin"] = "*"
    response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
    response["Access-Control-Max-Age"] = "1000"
    response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
    return response


# FILTROVANIE ZVIERATA


@api_view(['GET', 'OPTIONS'])
def searchPet(request):
    if request.method == 'GET':
        filters = {}
        for key, value in request.GET.items():
            if value != '':
                filters[key] = value
        filter_list = Details.objects.filter(
            **filters).values_list('id', 'breed')
        response = JsonResponse(
            list(filter_list.values('id', 'breed')), status=200, safe=False)
        response["Access-Control-Allow-Origin"] = "*"
        response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
        response["Access-Control-Max-Age"] = "1000"
        response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
        return response


# DELETE ADOPTOVANEHO
@api_view(['DELETE', 'OPTIONS'])
def delPet(request):
    body = json.loads(request.body)
    id = body['id']
    if(Pet.objects.filter(id=id).exists()):
        Pet.objects.filter(id=id).delete()
        Details.objects.filter(id=id).delete()
        response = HttpResponse(status=200)
        response["Access-Control-Allow-Origin"] = "*"
        response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
        response["Access-Control-Max-Age"] = "1000"
        response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
        return response
    else:
        response = HttpResponse(status=404)
        response["Access-Control-Allow-Origin"] = "*"
        response["Access-Control-Allow-Methods"] = "GET, OPTIONS"
        response["Access-Control-Max-Age"] = "1000"
        response["Access-Control-Allow-Headers"] = "X-Requested-With, Content-Type"
        return response
