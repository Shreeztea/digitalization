from django.shortcuts import render, redirect
from assignment.models import Assignment
from assignment.forms import AssignmentForm
from django.contrib import messages
from django.http import HttpResponse
from django.conf import settings
from faculty.models import Faculty
import datetime

import os

from wsgiref.util import FileWrapper
# from mimetypes import MimeTypes
import urllib, mimetypes 
from os.path import join, getsize



def assignment(request):
    if request.method == "POST":
        form = AssignmentForm(request.POST, request.FILES)
        if form.is_valid():
            try:
                form.save()
                return redirect('../../assignment/showa')
            except:
                pass
    faculty = Faculty.objects.all()
    return render(request, "assignment.html", {'faculty':faculty})


def showa(request):
    if('user_email' in request.session):
    # assignment = Assignment.objects.all()
        assignment = Assignment.objects.filter(atid=request.session['tid'])
        return render(request, "showa.html", {'assignment': assignment})
    else:
        return redirect('../../login')


def edita(request, id):
    assignment = Assignment.objects.get(id=id)
    return render(request, "edita.html", {'assignment': assignment})


def updatea(request, id):
    assignment = Assignment.objects.get(id=id)
    form = AssignmentForm(request.POST, request.FILES, instance=assignment)
    if form.is_valid():
        form.save()
        return redirect('../showa')
    else:
        print(form.errors)
    x={'assignment':assignment}
    y={'form':form}
    z = {**x, **y}

    return render(request, "edita.html", z)


def deletea(request, id):
    assignment = Assignment.objects.get(id=id)
    assignment.delete()
    return redirect('../showa')

def pdf_download(request, filename): 
    path = os.path.expanduser('~/Desktop/digitalization/media/'+filename) 
    # path = os.path.expanduser('../../media/') 
    wrapper = FileWrapper(open(path, 'rb')) 
    response = HttpResponse(wrapper, content_type=mimetypes.guess_type(filename)[0]) 
    response['Content-Length'] = os.path.getsize(path)  
    response['Content-Disposition'] = "attachment; filename=" + filename 
    return response

def file_view(request, filename):
    path = os.path.expanduser('~/Desktop/digitalization/media/'+filename) 
    wrapper = FileWrapper(open(path, 'rb')) 
    response = HttpResponse(wrapper, content_type=mimetypes.guess_type(filename)[0]) 
    response['Content-Length'] = os.path.getsize(path)  
    return response

def assignment_std(request):
    faculty=request.session['user_faculty']
    batch=request.session['user_batch']
    assignment = Assignment.objects.filter(afname=faculty,asbatch=batch)
    return render(request,"assignment_std.html", {'assignment': assignment})

   