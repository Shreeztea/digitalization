from django.db import models
from faculty.models import Faculty

# Create your models here.
class Student(models.Model):
	sid = models.IntegerField()
	sname = models.CharField(max_length=50)
	saddress = models.CharField(max_length=50)
	scontact = models.IntegerField()
	semail = models.EmailField()
	spassword = models.CharField(max_length=100)
	sbatch = models.IntegerField()
	sfaculty = models.ForeignKey(Faculty,on_delete=models.CASCADE)
	class Meta:
		db_table = "student"

	def __str__(self):
		return (self.sname + " - Batch : " + str(self.sbatch))