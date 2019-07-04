from django.shortcuts import render,redirect
from notics.forms import NoticsForm
from django.http import HttpResponse
from routine.models import Routine
from routine.forms import RoutineForm
from faculty.models import Faculty

def routine(request):
	faculty = Faculty.objects.all()
	return render(request,"routine.html",{'faculty':faculty})

def add(request):
	if request.method == "POST":
		form = RoutineForm(request.POST,request.FILES)
		if form.is_valid():
			try:
				form.save()
				return redirect('../routine')
			except:
				return HttpResponse('óiuyt')
		else:

			return render(request,'routine.html',{'form':form})
	faculty= Faculty.objects.all()		
	return render(request, 'routine.html', {'faculty':faculty})