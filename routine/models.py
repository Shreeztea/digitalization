from django.db import models

class Routine(models.Model):
	rfaculty = models.CharField(max_length=50)
	rbatch = models.IntegerField()
	rsemester = models.CharField(max_length=50)
	uploaded_by = models.IntegerField()
	uploaded_at = models.DateField(auto_now_add=True)
	display = models.DateField()
	rtitle = models.CharField(max_length=50,default='Routine')
	routine = models.FileField(default = None, blank=True)
	class Meta:
		db_table = 'routine'

def __str__(self):
		return self.rfaculty