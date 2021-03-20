from rest_framework.serializers import ModelSerializer
from .models import Zviera

class AnimalSerializer(ModelSerializer):
    class Meta:
        model = Zviera
        fields = '__all__'

