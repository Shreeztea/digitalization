# Generated by Django 2.2.1 on 2019-07-02 10:14

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Routine',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('rfaculty', models.CharField(max_length=50)),
                ('rbatch', models.IntegerField()),
                ('rsemester', models.CharField(max_length=50)),
                ('uploaded_by', models.IntegerField()),
                ('uploaded_at', models.DateField(auto_now_add=True)),
                ('display', models.DateField()),
                ('rtitle', models.CharField(default='Routine', max_length=50)),
                ('routine', models.FileField(blank=True, default=None, upload_to='')),
            ],
            options={
                'db_table': 'routine',
            },
        ),
    ]
