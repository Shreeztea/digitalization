from django.shortcuts import render, redirect
from faculty.forms import FacultyForm
from faculty.models import Faculty

# Create your views here.
def faculty(request):
	if request.method == "POST":
		form = FacultyForm(request.POST)
		if form.is_valid():
			try:
				form.save()
				return redirect("../../faculty/showf")
			except:
				pass
	else:
		form = FacultyForm()
	return render(request, "newfaculty.html", {'form':form})

def showf(request):
	faculty = Faculty.objects.all()
	return render(request, "faculty.html", {'faculty':faculty})


def editf(request, id):
    faculty = Faculty.objects.get(id=id)
    return render(request, "editf.html", {'faculty': faculty})

def updatef(request, id):
    faculty = Faculty.objects.get(id=id)
    form = FacultyForm(request.POST, instance= faculty)
    if form.is_valid():
       form.save()
       return redirect('../../faculty/showf')
    return render(request, "editf.html", {'faculty': faculty})

def deletef(request, id):
	faculty = Faculty.objects.get(id=id)
	faculty.delete()
	return redirect("../../faculty/showf") 
	