from rest_framework.serializers import ModelSerializer
from .models import Pet, Details
from rest_framework import serializers


class PetSerializer(ModelSerializer):
    class Meta:
        model = Pet
        fields = '__all__'


class DetailsSerializer(ModelSerializer):
    class Meta:
        model = Details
        fields = '__all__'


class UserSerializer(serializers.Serializer):
    nick = serializers.CharField(required=True)
    email = serializers.EmailField(required=True)
    birth = serializers.DateField(required=True)
    password = serializers.CharField(required=True)
