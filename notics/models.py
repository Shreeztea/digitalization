from django.db import models

# Create your models here.
class Notics(models.Model):
	nfaculty = models.CharField(max_length=50)
	nbatch = models.IntegerField()
	nsemester = models.CharField(max_length=50)
	nnotice = models.CharField(max_length=1000)
	ntitle = models.CharField(max_length=50,default='Notice')
	ntype = models.CharField(max_length=50,default='Others')
	uploaded_by = models.IntegerField()
	uploaded_at = models.DateField(auto_now_add=True)
	display = models.DateField()
	class Meta:
		db_table = 'notics'

def __str__(self):
		return self.nfaculty
				
