from django.db import models
from student.models import Student

# Create your models here.
class daily(models.Model):
	std_id = models.IntegerField()
	# std_id = models.ForeignKey(Student,on_delete=models.CASCADE)
	# roll_no= models.IntegerField()
	std_name = models.CharField(max_length=100)
	date= models.DateField()
	# period = models.CharField(max_length=20)
	attendance = models.BooleanField()
	faculty = models.CharField(max_length=20)
	batch = models.IntegerField()


class monthly(models.Model):
	std_id = models.IntegerField()
	# roll_no= models.IntegerField()
	std_name = models.CharField(max_length=100)
	month =  models.CharField(max_length=3)
	year = models.CharField(max_length=8)
	present_days = models.IntegerField(default=30)
	absent_days = models.IntegerField()
	working_days = models.IntegerField()
	faculty = models.CharField(max_length=20)
	batch = models.IntegerField()

class Meta:
		db_table = "daily"
# class Meta:
# 		db_table = "monthly"

class semester(models.Model):
	std_id = models.IntegerField()
	# roll_no= models.IntegerField()
	std_name = models.CharField(max_length=100)
	semester =  models.CharField(max_length=10)
	present_days = models.IntegerField(default=30)
	absent_days = models.IntegerField()
	working_days = models.IntegerField()
	faculty = models.CharField(max_length=20)
	batch = models.IntegerField()

class Meta:
		db_table = "semester"