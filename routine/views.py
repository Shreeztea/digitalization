from django.shortcuts import render,redirect
from notics.forms import NoticsForm
from django.http import HttpResponse
from routine.models import Routine
from routine.forms import RoutineForm
from faculty.models import Faculty
from django.contrib import messages

def routine(request):
	faculty = Faculty.objects.all()
	routine = Routine.objects.all()
	x={'faculty':faculty}
	y={'routine':routine}
	z={**x,**y}

	return render(request,"routine.html",z)

def add(request):
	if request.method == "POST":
		form = RoutineForm(request.POST,request.FILES)
		if form.is_valid():
			try:
				form.save()
				messages.success(request, 'Routine posted')
				return redirect('../routine')
			except:
				return HttpResponse('óiuyt')
		else:

			return render(request,'routine.html',{'form':form})
	faculty= Faculty.objects.all()		
	return render(request, 'routine.html', {'faculty':faculty})


def routine_std(request):
	faculty=request.session['user_faculty']
	batch=request.session['user_batch']
	routine = Routine.objects.filter(nfaculty=faculty,nbatch=batch)
	
	# notics = Notics.objects.all()
	return render(request,"routine_std.html", {'routine': routitne})