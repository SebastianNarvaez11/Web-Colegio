# Generated by Django 2.2.3 on 2019-07-28 04:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0003_auto_20190727_2308'),
    ]

    operations = [
        migrations.AlterField(
            model_name='service',
            name='slug',
            field=models.SlugField(verbose_name='Slug/Url'),
        ),
    ]
