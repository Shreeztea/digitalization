from django.shortcuts import render, redirect
from student.forms import StudentForm
from student.models import Student
from django.contrib import messages
from django.core.files import File
from faculty.models import Faculty

import logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)
from django.http import HttpResponseRedirect
from django.urls import reverse

import os

def student(request):
	faculty= Faculty.objects.all()
	# if request.method == "POST":
	# 	form = StudentForm(request.POST, request.FILES)
	# 	if form.is_valid():
	# 		try:
	# 			form.save()
	# 			return redirect('../../student/show')
	# 		except:
	# 			pass
	# else:
	# 	form = StudentForm()
	return render(request, "Student.html", {'faculty':faculty})


def show(request):
	if request.method == "POST":
		faculty = request.POST.get('faculty')
		batch = request.POST.get('batch')
		fname = Faculty.objects.get(fname=faculty)
		faculty_id = fname.fid
		std = Student.objects.filter(sfaculty_id = faculty_id, sbatch=batch)
		return render(request, "show.html", {'student': std})

def add(request):
	faculty= Faculty.objects.all()
	if request.method == "POST":
		form = StudentForm(request.POST, request.FILES)
		if form.is_valid():
			try:
				form.save()
				return redirect('../../student/student')
			except:
				pass
	else:
		form = StudentForm()
	return render(request, "index.html", {'form':form})

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

def student_csv(request):
	return render(request,"upload_csv.html")
		
def upload_csv(request):
	data = {}
	if "GET" == request.method:
		return render(request, "upload_csv.html", data)
    # if not GET, then proceed
	try:
		csv_file = request.FILES["csv_file"]
		if not csv_file.name.endswith('.csv'):
			messages.error(request,'File is not CSV type')
			return HttpResponseRedirect(reverse("student:upload_csv"))
        #if file is too large, return
		if csv_file.multiple_chunks():
			messages.error(request,"Uploaded file is too big (%.2f MB)." % (csv_file.size/(1000*1000),))
			return HttpResponseRedirect(reverse("student:upload_csv"))

		file_data = csv_file.read().decode("utf-8")		

		lines = file_data.split("\n")
		lines.remove('')
		#loop over the lines and save them in db. If error , store as string and then display
		for line in lines:	
			# fields = []					
			fields = line.split(",")
			data_dict = {}
			data_dict["id"] = fields[0]
			data_dict["sid"] = fields[1]
			data_dict["sname"] = fields[2]
			data_dict["saddress"] = fields[3]
			data_dict["scontact"] = fields[4]
			data_dict["semail"] = fields[5]
			data_dict["sbatch"] = fields[6]
			data_dict["sfaculty"] = fields[7]
			data_dict["spassword"] = fields[8]
			try:
				# form = TeacherForm(request.POST, request.FILES)
				form = StudentForm(data_dict)
				if form.is_valid():
					form.save()	
					# messages.success(request,"file uploaded")				
				else:
					logging.getLogger("error_logger").error(form.errors.as_json())												
			except Exception as e:
				logging.getLogger("error_logger").error(repr(e))					
				pass
		messages.success(request,"file uploaded")

	except Exception as e:
		logging.getLogger("error_logger").error("Unable to upload file. "+repr(e))
		messages.error(request,"Unable to upload file. "+repr(e))

	return HttpResponseRedirect(reverse("student:upload_csv"))			
