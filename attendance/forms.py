from django import forms
from attendance.models import daily

class DailyForm(forms.ModelForm):
	class Meta:
		model = Daily
		fields = "__all__"  
		"""__all__:to select all field defined in models
		("sid","sname"):to select specific field"""