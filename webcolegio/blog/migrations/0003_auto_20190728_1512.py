# Generated by Django 2.2.3 on 2019-07-28 20:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_post_publicacion'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='publicacion',
            field=models.DateField(auto_now_add=True, verbose_name='Fecha de publicacion'),
        ),
    ]