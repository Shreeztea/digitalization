from django.shortcuts import render,redirect
# from django.conf import settings
# from django.core.files.storage import FileSystemStorage
from notes.forms import NotesForm
from django.http import HttpResponse
from notes.models import Notes
from faculty.models import Faculty


def notes(request):
	if request.method == "POST":
		form = NotesForm(request.POST, request.FILES)
		if form.is_valid():
			try:
				form.save()
				return redirect('../shown')
			except:
				pass
		else:
			form = NotesForm()
	faculty= Faculty.objects.all()		
	return render(request, 'notes.html', {'faculty':faculty})


def shown(request):
	if('user_email' in request.session):
		tid=request.session['tid']
		notes = Notes.objects.filter(ntid = tid)
		# batch = .objects.filter(atid=request.session['tid'])
		return render(request, "shown.html", {'notes':notes})
	else:
		return redirect('../../login')


def editn(request, id):
    notes = Notes.objects.get(id=id)
    return render(request, "editn.html", {'notes': notes})

def updaten(request, id):
	# print('Form Submitted')
	notes = Notes.objects.get(id=id)
	form = NotesForm(request.POST, instance= notes)
	if form.is_valid():
		form.save()
		return redirect('../shown')
	else:
		print(form.errors)
	x={'notes':notes}
	y={'form':form}
	z = {**x, **y}

	return render(request, "editn.html", z)

def deleten(request, id):
	notes = Notes.objects.get(id=id)
	notes.delete()
	return redirect("../../notes/shown")

def notes_std(request):
	faculty=request.session['user_faculty']
	batch=request.session['user_batch']
	notes = Notes.objects.filter(nfaculty=faculty,nbatch=batch)
	return render(request,"notes_std.html",{'notes':notes})

