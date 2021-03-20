from django.http.response import JsonResponse
from .models import Zviera, Pouzivatel
from rest_framework.decorators import api_view
from .serializers import AnimalSerializer
from rest_framework.response import Response
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from . import validators
import bcrypt
import json
from django.views.decorators.http import require_http_methods


@api_view(['get'])
def fetchAnimals(request):
    actors = Zviera.objects.all()
    serializer = AnimalSerializer(actors, many=True)
    return Response(serializer.data)


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
            nick=body["nick"], email=body["email"], narodenie=body["narodenie"], heslo=hashed, id_faktury=0)
    return JsonResponse(res, status=status_code)
