# Generated by Django 2.2 on 2019-06-06 04:17

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('assignment', '0003_auto_20190606_0950'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignment',
            name='adeadline',
            field=models.DateField(default=django.utils.timezone.now),
            preserve_default=False,
        ),
    ]
