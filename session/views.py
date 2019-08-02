from django.shortcuts import render, redirect
from student.models import Student
from teacher.models import Teacher
from django.http import HttpResponse
from faculty.models import Faculty


def loginauth(request):
	if request.method == "POST":
		email = request.POST.get('email')
		password = request.POST.get('pass')
		teacher = Teacher.objects.filter(temail=email,tpassword=password)
		num_rows = teacher.count()
		if(num_rows>0):
			for t in teacher:
				request.session['user_email'] = t.temail
				request.session['user_name'] = t.tname
				request.session['tid'] = t.tid
				request.session['user_facultyid'] = t.tfaculty_id
				request.session['position'] = t.tposition
			# request.session['user_email'] = email
			# ema = request.session['user_faculty']
			return redirect('../../teacher/dashboard')
		else:
			student = Student.objects.filter(semail=email,spassword=password)
			num_rows = student.count()
			if(num_rows>0):
				for s in student:
					request.session['user_email'] = s.semail
					request.session['user_name'] = s.sname
					request.session['user_facultyid'] = s.sfaculty_id
					fac_id = s.sfaculty_id
					faculty = Faculty.objects.get(fid=fac_id)
					request.session['user_faculty'] = faculty.fname
					request.session['user_batch'] = s.sbatch
					request.session['user_id']=s.id
				# request.session['user_email'] = email
				# ema = request.session['user_faculty']
				return redirect('../../student/user')
			else:
				return HttpResponse('Email or password incorrect')	
	else:
		return HttpResponse("Please Retry after some time")
	return HttpResponse("not POST")


def index(request):
	return render(request, "login.html")

def logout(request):
	request.session.flush()
	return redirect('session:login')