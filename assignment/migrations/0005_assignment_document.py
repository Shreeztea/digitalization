# Generated by Django 2.2.1 on 2019-06-11 03:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('assignment', '0004_auto_20190606_1002'),
    ]

    operations = [
        migrations.AddField(
            model_name='assignment',
            name='document',
            field=models.FileField(blank=True, default=None, upload_to='document'),
        ),
    ]
