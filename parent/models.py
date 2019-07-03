from django.db import models
from student.models import Student

# Create your models here.
class Parent(models.Model):
	pid = models.IntegerField()
	pname = models.CharField(max_length=50)
	paddress = models.CharField(max_length=50)
	pcontact = models.CharField(max_length=50)
	pemail = models.EmailField()
	ppassword = models.CharField(max_length=100)
	psid = models.ForeignKey(Student,on_delete=models.CASCADE)
	class Meta:
		db_table = "parent"	

	def __str__(self):
		return self.pname	

   
