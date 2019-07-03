from django.contrib import admin
from django.urls import path
from teacher import views

app_name='teacher'

urlpatterns = [
	path('',views.showt),
	path('dashboard',views.dashboard,name='dashboard'),
	path('teacher',views.teacher),
	path('showt/',views.showt),
	path('editt/<int:id>', views.editt),
	path('updatet/<int:id>', views.updatet),
	path('deletet/<int:id>', views.deletet),
	path('add',views.teacher),
	path('teacher_profile',views.teacher_profile,name='teacher_profile'),
	]