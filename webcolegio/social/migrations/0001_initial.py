# Generated by Django 2.2.3 on 2019-08-07 14:31

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Link',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('key', models.SlugField(max_length=100, unique=True, verbose_name='Nombre clave')),
                ('nombre', models.CharField(max_length=100, verbose_name='Nombre')),
                ('url', models.URLField(blank=True, null=True, verbose_name='Enlace')),
                ('creacion', models.DateField(auto_now_add=True, verbose_name='Fecha de creacion')),
                ('edicion', models.DateField(auto_now=True, verbose_name='Fecha de edicion')),
            ],
            options={
                'verbose_name': 'Enlace',
                'verbose_name_plural': 'Enlaces',
                'ordering': ['-creacion'],
            },
        ),
    ]
