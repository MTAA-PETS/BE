# Generated by Django 3.1.6 on 2021-03-20 16:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('petsApp', '0003_auto_20210318_2043'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pouzivatel',
            name='email',
            field=models.EmailField(max_length=50, unique=True),
        ),
        migrations.AlterField(
            model_name='pouzivatel',
            name='nick',
            field=models.CharField(max_length=30, unique=True),
        ),
    ]
