from rest_framework.serializers import ModelSerializer
from .models import Zviera
from rest_framework import serializers


class AnimalSerializer(ModelSerializer):
    class Meta:
        model = Zviera
        fields = '__all__'


class UserSerializer(serializers.Serializer):
    nick = serializers.CharField(required=True)
    email = serializers.EmailField(required=True)
    narodenie = serializers.DateField(required=True)
    heslo = serializers.CharField(required=True)
