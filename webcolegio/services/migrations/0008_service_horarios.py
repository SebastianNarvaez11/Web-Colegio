# Generated by Django 2.2.3 on 2019-07-28 15:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0007_auto_20190728_1007'),
    ]

    operations = [
        migrations.AddField(
            model_name='service',
            name='horarios',
            field=models.CharField(blank=True, max_length=100, null=True, verbose_name='Horarios'),
        ),
    ]
