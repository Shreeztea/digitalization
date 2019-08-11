from django.shortcuts import render, redirect
from assignment_submit.models import Assignment_submit
from assignment_submit.forms import Assignment_submitForm
from student.models import Student
from attendance.models import semester
from marks.models import Marks
from faculty.models import Faculty

from django.http import HttpResponse
import datetime
import os
import math
import statistics

def student_performance(request):
    if request.method == "POST":
        faculty = request.POST.get('faculty')
        batch = request.POST.get('batch')
        semester = request.POST.get('semester')
        return redirect('algorithm:algorithm')
    faculty= Faculty.objects.all()      
    return render(request, 'performance1.html', {'faculty':faculty})


def algorithm(request):
    if request.method == "POST":
        batch = request.POST.get('batch')
        sem = request.POST.get('semester')        
    else:
        batch = 2072
        sem = 'first'
    # batch = request.POST.get('batch')
    # sem = request.POST.get('semester')
    attObj = semester.objects.filter(semester=sem,batch=batch)
    totalstd = (attObj.count())+1
    assiObj = Assignment_submit.objects.filter(asid__lt=totalstd)
    marObj = Marks.objects.filter(msemester=sem,mbatch=batch)

    attArr = []
    assiArr = []
    marArr = []
    for att in attObj:
        attArr.append(att.present_days)

    for assi in assiObj:
        assiArr.append(assi.astatus)

    for mar in marObj:
        marArr.append(mar.mmarks)

    # arra = [1,1,1,2,1,2,1,2]
    # arrb = [4,2,4,1,1,4,1,1]
    # arrc = [1,2,2,2,1,2,2,1]
    meana = []
    meanb = []
    meanc = []
    meanaa = []
    meanbb = []
    meancc = []
    meanaaa = []
    meanbbb = []
    meanccc = []
    meanaaaa = []
    meanbbbb = []
    meancccc = []
    meana.append(65)
    meanb.append(5)
    meanc.append(400)
    meanaa.append(25)
    meanbb.append(5)
    meancc.append(400)
    meanaaa.append(65)
    meanbbb.append(1)
    meanccc.append(200)
    meanaaaa.append(25)
    meanbbbb.append(1)
    meancccc.append(200)

    # print(arra)
    # print(arrb)
    # return HttpResponse(meana)
    i=0
    while True:
        ca = []
        cb = []
        cc = []
        cd = []
        ma = []
        mb = []
        j=0
        for x in attArr:
            # pa = (arra[j], arrb[j], arrc[j])
            pa = (attArr[j], assiArr[j], marArr[j])
            y = (meana[i], meanb[i], meanc[i])
            z = (meanaa[i], meanbb[i], meancc[i])
            yy = (meanaaa[i], meanbbb[i], meanccc[i])
            zz = (meanaaaa[i], meanbbbb[i], meancccc[i])
            
            ka = math.sqrt(sum([(a - b) ** 2 for a, b in zip(pa, y)]))
            kb = math.sqrt(sum([(a - b) ** 2 for a, b in zip(pa, z)]))
            kc = math.sqrt(sum([(a - b) ** 2 for a, b in zip(pa, yy)]))
            kd = math.sqrt(sum([(a - b) ** 2 for a, b in zip(pa, zz)]))
            j=j+1
            # ka = abs(meana[i] - x)
            # kb = abs(meanb[i] - x)
            if((ka<kb)and(ka<kc)and(ka<kd)):
                # ma.append(statistics.mean([arra[j-1],arrb[j-1]]))
                meana.append(statistics.mean([meana[i],attArr[j-1]]))
                meanb.append(statistics.mean([meanb[i],assiArr[j-1]]))
                meanc.append(statistics.mean([meanc[i],marArr[j-1]]))
                meanaa.append(meanaa[i])
                meanbb.append(meanbb[i])
                meancc.append(meancc[i])
                meanaaa.append(meanaaa[i])
                meanbbb.append(meanbbb[i])
                meanccc.append(meanccc[i])
                meanaaaa.append(meanaaaa[i])
                meanbbbb.append(meanbbbb[i])
                meancccc.append(meancccc[i])
                ca.append(j)
            elif((kb<ka)and(kb<kc)and(kb<kd)):
                # mb.append(statistics.mean([arra[j-1],arrb[j-1]]))
                meanaa.append(statistics.mean([meanaa[i],attArr[j-1]]))
                meanbb.append(statistics.mean([meanbb[i],assiArr[j-1]]))
                meancc.append(statistics.mean([meancc[i],marArr[j-1]]))
                meana.append(meana[i])
                meanb.append(meanb[i])
                meanc.append(meanc[i])
                meanaaa.append(meanaaa[i])
                meanbbb.append(meanbbb[i])
                meanccc.append(meanccc[i])
                meanaaaa.append(meanaaaa[i])
                meanbbbb.append(meanbbbb[i])
                meancccc.append(meancccc[i])
                cb.append(j)
            elif((kc<ka)and(kc<kb)and(kc<kd)):
                # mb.append(statistics.mean([arra[j-1],arrb[j-1]]))
                meanaaa.append(statistics.mean([meanaaa[i],attArr[j-1]]))
                meanbbb.append(statistics.mean([meanbbb[i],assiArr[j-1]]))
                meanccc.append(statistics.mean([meanccc[i],marArr[j-1]]))
                meana.append(meana[i])
                meanb.append(meanb[i])
                meanc.append(meanc[i])
                meanaa.append(meanaaa[i])
                meanbb.append(meanbbb[i])
                meancc.append(meanccc[i])
                meanaaaa.append(meanaaaa[i])
                meanbbbb.append(meanbbbb[i])
                meancccc.append(meancccc[i])
                cc.append(j)
            else:
                meanaaaa.append(statistics.mean([meanaaaa[i],attArr[j-1]]))
                meanbbbb.append(statistics.mean([meanbbbb[i],assiArr[j-1]]))
                meancccc.append(statistics.mean([meancccc[i],marArr[j-1]]))
                meana.append(meana[i])
                meanb.append(meanb[i])
                meanc.append(meanc[i])
                meanaa.append(meanaaa[i])
                meanbb.append(meanbbb[i])
                meancc.append(meanccc[i])
                meanaaa.append(meanaaaa[i])
                meanbbb.append(meanbbbb[i])
                meanccc.append(meancccc[i])
                cd.append(j)
        i=i+1   
        if(meana[i]==meana[i-1] and meanb[i]==meanb[i-1] and meanc[i]==meanc[i-1] and meanaa[i]==meanaa[i-1] and meanbb[i]==meanbb[i-1] and meancc[i]==meancc[i-1] and meanaaa[i]==meanaaa[i-1] and meanbbb[i]==meanbbb[i-1] and meanccc[i]==meanccc[i-1]):
            break
        elif(i>20):
            break
    
    stdca = []
    stdcb = []
    stdcc = []
    stdcd = []
    for ca in ca:
        stdObj1 = Student.objects.get(sid=ca,sbatch=batch)
        stdca.append(stdObj1)
    for cb in cb:
        stdObj2 = Student.objects.get(sid=cb,sbatch=batch)
        stdcb.append(stdObj2)
    for cc in cc:
        stdObj3 = Student.objects.get(sid=cc,sbatch=batch)
        stdcc.append(stdObj3)
    for cd in cd:
        stdObj4 = Student.objects.get(sid=cd,sbatch=batch)
        stdcd.append(stdObj4)
    # return HttpResponse("<pre>%s"%stdcb)
    # title = "ca = %s cb = %s"%(ca,cb) 
    # return HttpResponse("<h1>%s</h1>" % title)
    x={'studenta':stdca}
    y={'studentb':stdcb}
    xx={'studentc':stdcc}
    yy={'studentd':stdcd}   

    z = {**x, **y, **xx, **yy} 
    return render(request, "performance.html", z)
    

    # print("ca=")
    # print(ca)
    # print("cb=")
    # print(cb)
    # return HttpResponse('else')


    # return redirect('../show_sub')
    