from django.db import models

# Create your models here.
class Faculty(models.Model):
	fid = models.IntegerField()
	fname = models.CharField(max_length=50)
	fhead = models.CharField(max_length=50)
	class Meta:
		db_table = "faculty"

	def __str__(self):
		return self.fname		 