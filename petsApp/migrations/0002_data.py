
from django.db import migrations, connection
import os


def load_data_from_sql(apps, schema_editor):
    file_path = os.path.join(os.path.dirname(__file__), '../sql/', 'db.sql')
    sql_statement = open(file_path, encoding='utf8').read()
    with connection.cursor() as c:
        c.execute(sql_statement)


class Migration(migrations.Migration):

    dependencies = [
        ('petsApp', '0001_initial'),
    ]

    operations = [
        migrations.RunPython(load_data_from_sql)
    ]
