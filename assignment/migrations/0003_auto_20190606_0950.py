# Generated by Django 2.2 on 2019-06-06 04:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('assignment', '0002_auto_20190606_0909'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment',
            name='adeadline',
            field=models.DateField(blank=True, null=True),
        ),
    ]
