# Generated by Django 3.1.6 on 2021-03-21 16:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('petsApp', '0005_auto_20210320_1749'),
    ]

    operations = [
        migrations.AlterField(
            model_name='faktura',
            name='datum',
            field=models.DateTimeField(),
        ),
    ]
