from django import forms
from assignment_submit.models import Assignment_submit


class Assignment_submitForm(forms.ModelForm):
    class Meta:
        model = Assignment_submit
        fields = '__all__'
