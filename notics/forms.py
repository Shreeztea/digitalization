from django import forms
from notics.models import Notics

class NoticsForm(forms.ModelForm):
    class Meta:
        model = Notics
        fields = ('__all__')