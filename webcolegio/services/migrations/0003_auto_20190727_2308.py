# Generated by Django 2.2.3 on 2019-07-28 04:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0002_auto_20190727_1807'),
    ]

    operations = [
        migrations.AddField(
            model_name='service',
            name='slug',
            field=models.SlugField(default='slug_pagina', verbose_name='Slug/Url'),
        ),
        migrations.AlterField(
            model_name='service',
            name='index',
            field=models.BooleanField(default=True, verbose_name='Mostrar en el inicio'),
        ),
    ]
