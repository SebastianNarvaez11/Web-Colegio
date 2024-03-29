# Generated by Django 2.2.3 on 2019-07-25 02:43

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Colegio',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=100, verbose_name='Nombre')),
                ('lema', models.CharField(blank=True, max_length=300, null=True, verbose_name='Lema')),
                ('logo', models.ImageField(upload_to='colegio', verbose_name='Logo')),
                ('email', models.EmailField(max_length=200, verbose_name='Email')),
                ('direccion', models.CharField(max_length=300, verbose_name='Dirección')),
                ('telefono', models.CharField(max_length=100, verbose_name='Telefono')),
                ('horarios', models.CharField(blank=True, max_length=500, null=True, verbose_name='Horarios')),
                ('mision', models.TextField(verbose_name='Misión')),
                ('vision', models.TextField(verbose_name='Vision')),
                ('creacion', models.DateField(auto_now_add=True, verbose_name='Fecha de creacion')),
                ('edicion', models.DateField(auto_now=True, verbose_name='Fecha de edicion')),
            ],
            options={
                'verbose_name': 'Colegio',
                'verbose_name_plural': 'Colegio',
            },
        ),
    ]
