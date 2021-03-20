from .models import Zviera, Pouzivatel
from rest_framework.decorators import api_view
from .serializers import AnimalSerializer
from rest_framework.response import Response
from django.http import HttpResponse


@api_view(['get'])
def fetchAnimals(request):
    actors = Zviera.objects.all()
    serializer = AnimalSerializer(actors, many=True)
    return Response(serializer.data)


@api_view(['POST'])
def newUser(request):
    if request.method == 'POST':
        user = Pouzivatel.objects.create_user(
            'luc', 'luc.man@gmail.com' '30.07.1999', 'opatofska', 0)
        # user.save()
        return Response(user, status=200)
