from django.contrib import admin
from django.urls import path
from student import views
app_name = 'student'
urlpatterns = [
	path('',views.show),
	path('student', views.student),
	path('show/', views.show),
	path('edit/<int:id>', views.update),
	path('update/<int:id>', views.update),
	path('delete/<int:id>', views.delete),
	path('add/', views.student),
	path('user',views.user,name='std_user'),
	]