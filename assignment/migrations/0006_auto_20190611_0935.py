# Generated by Django 2.2.1 on 2019-06-11 03:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('assignment', '0005_assignment_document'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment',
            name='document',
            field=models.FileField(blank=True, default=None, upload_to=''),
        ),
    ]
