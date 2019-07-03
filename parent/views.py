from django.shortcuts import render, redirect
from parent.forms import ParentForm
from parent.models import Parent

# Create your views here.
def parent(request):
	if request.method == "POST":
		form = ParentForm(request.POST)
		if form.is_valid():
			try:
				form.save()
				return redirect("../../parent/showp") 
			except:
				pass
	else:
		form = ParentForm()
	return render(request, "indexp.html", {'form':form})

def showp(request):
	parent = Parent.objects.all()
	return render(request, "showp.html", {'parent':parent})


def editp(request, id):
    parent = Parent.objects.get(id=id)
    return render(request, "editp.html", {'parent': parent})

def updatep(request, id):
	# print('Form Submitted')
	parent = Parent.objects.get(id=id)
	form = ParentForm(request.POST, instance= parent)
	if form.is_valid():
		form.save()
		return redirect('../showp')
	else:
		print(form.errors)
	x={'parent':parent}
	y={'form':form}
	z = {**x, **y}

	return render(request, "editp.html", z)

def deletep(request, id):
	parent = Parent.objects.get(id=id)
	parent.delete()
	return redirect("../../parent/showp") 

