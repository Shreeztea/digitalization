from django.shortcuts import render, redirect
from student.forms import StudentForm
from student.models import Student
from attendance.models import daily, semester
from faculty.models import Faculty
from django.http import HttpResponse
import datetime
from django.contrib import messages



def take_attendance(request):
		faculty = request.POST.get('faculty')
		batch = request.POST.get('batch')
		fac = Faculty.objects.get(fid=faculty)
		student = Student.objects.filter(sfaculty_id=faculty, sbatch=batch)
		x = {'student': student}
		y = {}
		y['faculty']= fac.fname
		y['batch']= batch
		z={**x,**y}
		return render(request, "take_attendance.html", z )



def update_attendance(request,faculty,batch):
	values = []
	names = []
	atts = []
	x = datetime.datetime.now()
	if request.method == "POST":
		count = int(request.POST.get('count'))
		
		for i in range(1, count+1):
			values.append(request.POST.get('id{}'.format(i)))
			names.append(request.POST.get('name{}'.format(i)))
			atts.append(request.POST.get('att{}'.format(i)))
			id=values[i-1]
			name=names[i-1]
			atte = atts[i-1]
			att=daily(std_id=id,std_name=name,date=x.strftime("%Y-%m-%d"),attendance=atte,faculty=faculty,batch=batch)
			att.save()
		# values.save()
		# return render(request,'take_attendance.html',data)
		messages.success(request,'Attendance successfully updated')
		return redirect('../../../attendance')
	# return render(request,'take_attendance.html',data)
	return HttpResponse('else')

def attendance(request):
	faculty = Faculty.objects.all()
	return render(request,"attendance.html",{'faculty':faculty})

def attendance_std(request):
	id = request.session['user_id']
	if request.method == "POST":
		sem=request.POST.get('sem')
		attendance=semester.objects.get(std_id=id,semester=sem)
		a={'sem':sem}
		b={'attendance':attendance}
		c={**a,**b}
		return render(request,"piechart.html",c)
	else:
		sem='First'
		attendance= semester.objects.get(std_id=id,semester=sem)
		# attendance= semester.objects.filter(std_id=id)
		# return HttpResponse(attendance)
		a={'sem':sem}
		b={'attendance':attendance}
		c={**a,**b}
		return render(request,"piechart.html",c)

def view_attendance(request):
	if request.method == "POST":
		faculty = request.POST.get('faculty')
		batch = request.POST.get('batch')
		sem = request.POST.get('semester')
		att = semester.objects.filter(faculty=faculty, semester=sem)
		return render(request,"view_attendance.html",{'attendance':att})
	else:
		return HttpResponse('not post')	