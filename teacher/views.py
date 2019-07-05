from django.shortcuts import render, redirect
from teacher.forms import TeacherForm
from teacher.models import Teacher
from django.http import HttpResponse
from notics.models import Notics
from routine.models import Routine

# Create your views here.
def teacher(request):
	if request.method == "POST":
		form = TeacherForm(request.POST)
		if form.is_valid():
			try:
				form.save()
				return redirect('../../teacher/showt')
			except:
				pass
	else:
		form = TeacherForm()
	return render(request, "indext.html", {'form':form})

def showt(request):
	teacher = Teacher.objects.all()
	return render(request, "showt.html", {'teacher':teacher})


def editt(request, id):
	teacher = Teacher.objects.get(id=id)
	return render(request, "editt.html", {'teacher': teacher})

def updatet(request, id):
    teacher = Teacher.objects.get(id=id)
    form = TeacherForm(request.POST, instance= teacher)
    if form.is_valid():
       form.save()
       return redirect('../showt')
    return render(request, "editt.html", {'teacher': teacher})

def deletet(request, id):
	teacher = Teacher.objects.get(id=id)
	teacher.delete()
	return redirect("../showt") 

def dashboard(request):
	notics = Notics.objects.all()
	routine = Routine.objects.all()
	x={'notice':notics}
	y={'routine':routine}
	z={**x,**y}
	if('user_email' in request.session):
		email = request.session['user_email']
		return render(request,"dashboard.html",z)
	else:
		return redirect('../../login')

def teacher_profile(request):
	if('user_email' in request.session):
		email = request.session['user_email']
		id = request.session['tid']
		teacher = Teacher.objects.get(id=id)
		return render(request,"user_t.html",{'teacher': teacher})
	else:
		return redirect('../../login')		