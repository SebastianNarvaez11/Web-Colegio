# Generated by Django 2.2.3 on 2019-07-28 15:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0004_auto_20190727_2309'),
    ]

    operations = [
        migrations.AddField(
            model_name='service',
            name='matricula',
            field=models.IntegerField(default=1000, verbose_name='Matricula'),
        ),
    ]
