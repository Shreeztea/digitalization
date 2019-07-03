from django import forms
from faculty.models import Faculty

class FacultyForm(forms.ModelForm):
	class Meta:
		model = Faculty
		fields = "__all__"
	
		