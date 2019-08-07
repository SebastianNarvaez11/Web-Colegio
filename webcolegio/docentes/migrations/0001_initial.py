# Generated by Django 2.2.3 on 2019-08-05 23:58

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Materia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=200, verbose_name='Nombre')),
            ],
            options={
                'verbose_name': 'Materia',
                'verbose_name_plural': 'Materias',
            },
        ),
        migrations.CreateModel(
            name='Docente',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=100, verbose_name='Nombres')),
                ('apellido', models.CharField(max_length=100, verbose_name='Apellidos')),
                ('imagen', models.ImageField(upload_to='docentes', verbose_name='Foto')),
                ('grados', models.CharField(max_length=200, verbose_name='Grados a los que enseña')),
                ('informacion', models.TextField(blank=True, null=True, verbose_name='Información')),
                ('creacion', models.DateField(auto_now_add=True, verbose_name='Fecha de creacion')),
                ('edicion', models.DateField(auto_now=True, verbose_name='Fecha de edicion')),
                ('materias', models.ManyToManyField(related_name='obtener_docentes', to='docentes.Materia', verbose_name='Materias')),
            ],
            options={
                'verbose_name': 'Docente',
                'verbose_name_plural': 'Docentes',
            },
        ),
    ]