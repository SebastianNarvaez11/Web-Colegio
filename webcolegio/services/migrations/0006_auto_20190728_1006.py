# Generated by Django 2.2.3 on 2019-07-28 15:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0005_service_matricula'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='service',
            name='costo',
        ),
        migrations.AddField(
            model_name='service',
            name='mensualidad',
            field=models.IntegerField(default=5, verbose_name='Mensualidad'),
        ),
        migrations.AlterField(
            model_name='service',
            name='matricula',
            field=models.IntegerField(verbose_name='Matricula'),
        ),
    ]