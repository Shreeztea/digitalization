from django.shortcuts import render,redirect
from notics.forms import NoticsForm
from django.http import HttpResponse
from notics.models import Notics
from faculty.models import Faculty

def notice(request):
	if request.method == "POST":
		form = NoticsForm(request.POST)
		if form.is_valid():
			try:
				form.save()
				return redirect('../show_n')
			except:
				return HttpResponse('óiuyt')
		else:
			return HttpResponse('invalid form')
	faculty= Faculty.objects.all()		
	return render(request, 'notice.html', {'faculty':faculty})

def show_n(request):
	notics = Notics.objects.all()
	faculty= Faculty.objects.all()
	x={'notice':notics}
	y={'faculty':faculty}
	z = {**x, **y}	
	return render(request, 'notice.html', z)


def edit_n(request, id):
    notics = Notics.objects.get(id=id)
    return render(request, "edit_n.html", {'notics': notics})

def update_n(request, id):
	notics = Notics.objects.get(id=id)
	form = NoticsForm(request.POST, instance= notics)
	if form.is_valid():
		form.save()
		return redirect('../show_n')
	else:
		print(form.errors)
	x={'notics':notics}
	y={'form':form}
	z = {**x, **y}

	return render(request, "editn.html", z)

def delete_n(request, id):
	notics = Notics.objects.get(id=id)
	notics.delete()
	return redirect("../../notics/show_n")

def notice_std(request):
	faculty=request.session['user_faculty']
	batch=request.session['user_batch']
	notics = Notics.objects.filter(nfaculty=faculty,nbatch=batch)
	
	# notics = Notics.objects.all()
	return render(request,"notice_std.html", {'notics': notics})