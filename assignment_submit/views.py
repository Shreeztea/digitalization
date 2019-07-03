from django.shortcuts import render, redirect
from assignment_submit.models import Assignment_submit
from assignment_submit.forms import Assignment_submitForm
from django.contrib import messages
from student.models import Student
from faculty.models import Faculty

from django.http import HttpResponse
import datetime
import os


def assignment_submit(request,id, asubject, afname, asbatch):
    faculty = Faculty.objects.get(fname=afname)
    faculty_id = faculty.fid
    student = Student.objects.filter(sfaculty_id = faculty_id , sbatch = asbatch)
    # x = datetime.datetime.now()
    y={'id':id}
    assignment_submit = Assignment_submit.objects.filter(aid=id)
    if assignment_submit:
        x={'assignment_submit': assignment_submit}  
        z={**x,**y}
        return render(request, "index_sub.html", z)
    else:
        for student in student:           
                att=Assignment_submit(aid=id,asid=student.id,asname=student.sname,asubject=asubject,astatus=0,adate="2019-05-30")
                att.save()
        assignment_submit = Assignment_submit.objects.all()
        x={'assignment_submit': assignment_submit}  
        z={**x,**y}
        return render(request, "index_sub.html", z)

def update_sub(request, id):
    assid=[]
    stdid = []
    names = []
    asub=[]
    assm = []
    ad=[]
    x = datetime.datetime.now()
    if request.method == "POST":
        count = int(request.POST.get('count'))
        Assignment_submit.objects.filter(aid=id).delete()
        
        for i in range(1, count+1):
            assid.append(request.POST.get('aid{}'.format(i)))
            stdid.append(request.POST.get('id{}'.format(i)))
            names.append(request.POST.get('name{}'.format(i)))
            asub.append(request.POST.get('sub{}'.format(i)))
            assm.append(request.POST.get('ass{}'.format(i)))
            # ad.append(request.POST.get('date{}'.format(i)))
            aid=assid[i-1]
            id=stdid[i-1]
            name=names[i-1]
            sub=asub[i-1]
            marks = assm[i-1]
            # date=ad[i-1]
            att=Assignment_submit(aid=aid,asid=id,asname=name,asubject=sub,astatus=marks,adate="2019-05-30")
            att.save()
        # values.save()
        # return render(request,'take_attendance.html',data)
        # return HttpResponse('<script>alert("successfully updated")</script>')
        messages.success(request,'Assignment Marks successfully updated')
        return redirect("../assignment")
    # return render(request,'take_attendance.html',data)
    return HttpResponse('else')


