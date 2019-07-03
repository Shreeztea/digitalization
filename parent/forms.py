from django import forms
from parent.models import Parent

class ParentForm(forms.ModelForm):
	class Meta:
		model = Parent
		fields = '__all__'