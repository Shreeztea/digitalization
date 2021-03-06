from django.shortcuts import render, redirect
from marks.forms import MarksForm
from marks.models import Marks
from faculty.models import Faculty
from django.contrib import messages
from django.http import HttpResponse
from django.core.files import File
import os
from student.models import Student
from django.http import HttpResponse
import logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)
from django.http import HttpResponseRedirect
from django.urls import reverse


def mark(request):
    afname = request.POST.get('fname')
    asbatch = request.POST.get('mbatch')
    semester = request.POST.get('msemester')
    exam = request.POST.get('mexam')
    subject = request.POST.get('msubject')
    faculty = Faculty.objects.get(fname=afname)
    faculty_id = faculty.fid
    student = Student.objects.filter(sfaculty_id = faculty_id , sbatch = asbatch)
    y = {}
    y['faculty']=afname
    y['batch']=asbatch
    y['semester']=semester
    y['exam']=exam
    y['subject']=subject
    # assignment_submit = Assignment_submit.objects.filter(aid=id)
    marks = Marks.objects.filter(fname=afname,msubject=subject,msemester=semester,mbatch=asbatch,mexam=exam)
    if marks:
        # x={'marks': marks}  
        # z={**x,**y}
        messages.success(request,'Marks already uploaded')
        return render(request, "marks.html")
    else:
        # for student in student:           
        #         att=Assignment_submit(aid=id,asid=student.id,asname=student.sname,asubject=asubject,astatus=0,adate="2019-05-30")
        #         att.save()
        # assignment_submit = Assignment_submit.objects.all()
        x={'student': student}  
        z={**x,**y}
        return render(request, "indexm.html", z)


# def mark(request):
#     if request.method == "POST":
#         form = MarksForm(request.POST, request.FILES)
#         if form.is_valid():
#             try:
#                 form.save()
#                 return redirect('../../marks/showm')
#             except:
#                 pass
#     # else:
#     #     form = MarksForm()
#     #     return render(request, "indexm.html", {'form': form})
#     faculty = Faculty.objects.all()
#     return render(request, "indexm.html", {'faculty':faculty}) 


def showm(request):
    # marks = Marks.objects.all()
    fname = request.POST.get('fname')
    mbatch = request.POST.get('mbatch')
    msemester = request.POST.get('msemester')
    marks = Marks.objects.filter(msemester=msemester,mbatch=mbatch,fname=fname)
    return render(request, "showm.html", {'marks': marks})


def editm(request, id):
    marks = Marks.objects.get(id=id)
    return render(request, "editm.html", {'marks': marks})



def updatem(request, id):
    marks = Marks.objects.get(id=id)
    form = MarksForm(request.POST, instance=marks)
    # form.save()
    # return redirect('../show')
    if form.is_valid():
        fname = marks.fname
        mbatch = marks.mbatch
        msemester = marks.msemester
        form.save()
        # return redirect('../showm')
        marks = Marks.objects.filter(msemester=msemester,mbatch=mbatch,fname=fname)
        return render(request, "showm.html", {'marks': marks})


    return render(request, "editm.html", {'marks': marks})


def deletem(request, id):
    marks = Marks.objects.get(id=id)
    fname = marks.fname
    mbatch = marks.mbatch
    msemester = marks.msemester
    marks.delete()
    # return redirect('../showm')
    # return HttpResponse(fname)

    marks = Marks.objects.filter(msemester=msemester,mbatch=mbatch,fname=fname)
    return render(request, "showm.html", {'marks': marks})


def marks(request):
    faculty = Faculty.objects.all()
    return render(request, "marks.html", {'faculty':faculty})

def add_marks(request):
    mid=[]
    mexam = []
    mname = []
    msub=[]
    mmarks = []
    msem = []
    mbat = []
    mfna = []
    
    # x = datetime.datetime.now()
    if request.method == "POST":
        count = int(request.POST.get('count'))
        # Assignment_submit.objects.filter(aid=id).delete()
        
        for i in range(1, count+1):
            mid.append(request.POST.get('id{}'.format(i)))
            mexam.append(request.POST.get('exam{}'.format(i)))
            mname.append(request.POST.get('name{}'.format(i)))
            msub.append(request.POST.get('sub{}'.format(i)))
            mmarks.append(request.POST.get('marks{}'.format(i)))
            msem.append(request.POST.get('sem{}'.format(i)))
            mbat.append(request.POST.get('bat{}'.format(i)))
            mfna.append(request.POST.get('fna{}'.format(i)))
            id=mid[i-1]
            exam=mexam[i-1]
            name=mname[i-1]
            sub=msub[i-1]
            marks = mmarks[i-1]
            semester=msem[i-1]
            batch=mbat[i-1]
            fac=mfna[i-1]
            mar=Marks(sid=id,msemester=semester,mexam=exam,msubject=sub,mmarks=marks,fname=fac,mbatch=batch,sname=name)
            mar.save()
        # values.save()
        # return render(request,'take_attendance.html',data)
        # return HttpResponse('<script>alert("successfully updated")</script>')
        messages.success(request,'Marks successfully uploaded')
        return redirect("../../marks")
    # return render(request,'take_attendance.html',data)
    return HttpResponse('else')

def marks_std(request):
    faculty=request.session['user_faculty']
    batch=request.session['user_batch']
    sid=request.session['user_id']
    totalm=0
    totalp=0
    flag1='Pass'
    flag2='Pass'
    p=[]
    marks = Marks.objects.filter(sid=sid,msubject='All')
    marks_mid = Marks.objects.filter(sid=sid,mexam='Mid Term')
    marks_pre = Marks.objects.filter(sid=sid,mexam='Pre Board')
    
    for mm in marks_mid:
        totalm = totalm + mm.mmarks
        if(mm.mmarks<24):
            flag1='Fail'

    for mp in marks_pre:
        totalp = totalp + mp.mmarks
        if(mp.mmarks<24):
            flag2='Fail'
    percent={}
    percent['mid_percent']=(totalm/240)*100
    percent['pre_percent']=(totalp/240)*100
    percent['mid_pass'] = flag1
    percent['pre_pass'] = flag2
    

    m1={'marks':marks}
    m2={'marks_mid':marks_mid}
    m3={'marks_pre':marks_pre}
    m= {**m1,**m2,**m3,**percent}
    return render(request,"marks_std.html",m)
    
def marks_csv(request):
    return render(request,"upload_marks_csv.html")
        
def upload_csv(request):
    data = {}
    if "GET" == request.method:
        return render(request, "upload_marks_csv.html", data)
    # if not GET, then proceed
    try:
        csv_file = request.FILES["csv_file"]
        if not csv_file.name.endswith('.csv'):
            messages.error(request,'File is not CSV type')
            return HttpResponseRedirect(reverse("marks:upload_marks_csv"))
        #if file is too large, return
        if csv_file.multiple_chunks():
            messages.error(request,"Uploaded file is too big (%.2f MB)." % (csv_file.size/(1000*1000),))
            return HttpResponseRedirect(reverse("marks:upload_marks_csv"))

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
            data_dict["msemester"] = fields[2]
            data_dict["mexam"] = fields[3]
            data_dict["msubject"] = fields[4]
            data_dict["mmarks"] = fields[5]
            data_dict["fname"] = fields[6]
            data_dict["mbatch"] = fields[7]
            data_dict["sname"] = fields[8]
            try:
                # form = TeacherForm(request.POST, request.FILES)
                form = MarksForm(data_dict)
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

    return HttpResponseRedirect(reverse("marks:upload_marks_csv"))          
