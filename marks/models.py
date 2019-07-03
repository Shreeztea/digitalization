from django.db import models

# Create your models here.


class Marks(models.Model):
    sid = models.IntegerField()
    sname = models.CharField(max_length=30)
    msemester = models.CharField(max_length=50)
    mexam = models.CharField(max_length=50)
    msubject = models.CharField(max_length=50)
    mmarks = models.IntegerField()
    mbatch = models.IntegerField(default=2072)
    fname = models.CharField(max_length=50,default='BSCCSIT')

    class Meta:
        db_table = "marks"

    def __str__(self):
        return self.msemester
