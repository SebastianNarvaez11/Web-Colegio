# Generated by Django 2.2.3 on 2019-08-03 16:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_auto_20190729_1122'),
    ]

    operations = [
        migrations.AddField(
            model_name='colegio',
            name='historia',
            field=models.TextField(default='hla', verbose_name='Historia'),
        ),
    ]
