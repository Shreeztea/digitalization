from django.db import models

# Create your models here.
class Assignment_submit(models.Model):
	aid = models.IntegerField()
	asid = models.IntegerField()
	asname = models.CharField(max_length=50)
	asubject =models.CharField(max_length=50)
	astatus = models.IntegerField()
	adate = models.DateField(blank=True,null=True)

	class Meta:
		db_table ='assignment_submit'

	def __str__(self):
		return self.asname
		