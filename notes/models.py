from django.db import models
# Create your models here.
class Notes(models.Model):
		ndocument = models.FileField(default = None, blank=True)
		uploaded_at = models.DateField(auto_now_add=True)
		nfaculty = models.CharField(max_length=20)
		ntid = models.IntegerField()
		nbatch = models.IntegerField()
		nname = models.CharField(max_length=50)
		class Meta:
			db_table ='notes'

def __str__(self):
		return self.nbatch


		