from django.db import models
from faculty.models import Faculty

# Create your models here.
class Teacher(models.Model):
	tid = models.IntegerField()
	tname = models.CharField(max_length=50)
	taddress = models.CharField(max_length=50)
	tcontact = models.CharField(max_length=50)
	temail = models.EmailField()
	tpassword = models.CharField(max_length=100)
	tfaculty = models.ForeignKey(Faculty,on_delete=models.CASCADE)
	tposition = models.CharField(max_length=50)
	class Meta:
		db_table = "teacher"
	def __str__(self):
		return (self.tname)
