from django.contrib import admin
from django.urls import path
from student import views
app_name = 'student'
urlpatterns = [
	path('',views.show),
	path('student', views.student,name='student_adm'),
	path('show/', views.show),
	path('edit/<int:id>', views.update),
	path('update/<int:id>', views.update),
	path('delete/<int:id>', views.delete),
	path('add/', views.add),
	path('user',views.user,name='std_user'),
	]