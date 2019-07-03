from django.shortcuts import render, redirect
from student.forms import StudentForm
from student.models import Student
from django.contrib import messages
from django.core.files import File
import os

def student(request):
	if request.method == "POST":
		form = StudentForm(request.POST, request.FILES)
		if form.is_valid():
			try:
				form.save()
				return redirect('../../student/show')
			except:
				pass
	else:
		form = StudentForm()
	return render(request, "index.html", {'form': form})


def show(request):
		student = Student.objects.all()
		return render(request, "show.html", {'student': student})

def edit(request, id):
		student = Student.objects.get(id=id)
		return render(request, "edit.html", {'student': student})


def update(request, id):
	student = Student.objects.get(id=id)
	form = StudentForm(request.POST, instance = student)
	# form.save()
	# return redirect('../show')
	if form.is_valid():
		form.save()
		messages.success(request,'Student Record successfully updated')
		return redirect('student:std_user')
	x={'Student':student}
	y={'form':form}
	z = {**x, **y}
	return render(request,"user.html",z)

def delete(request, id):
	student = Student.objects.get(id=id)
	student.delete()
	return redirect('../show')

def user(request):
	if('user_email' in request.session):
		email = request.session['user_email']
		id = request.session['user_id']
		student = Student.objects.get(id=id)
		return render(request,"user.html",{'student': student})
	else:
		return redirect('../../login')
		