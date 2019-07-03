from django.db import models

# Create your models here.


class Assignment(models.Model):
    atid = models.IntegerField()
    afname = models.CharField(max_length=50)
    asbatch = models.IntegerField()
    aname = models.CharField(max_length=40)
    asubject = models.CharField(max_length=50)
    adeadline = models.DateField()
    document = models.FileField(default = None, blank=True)

    class Meta:
        db_table = "assignment"


def __str__(self):
    return (self.aname + " - Batch : " + str(self.abatch))
