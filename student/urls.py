from django.contrib import admin
from django.urls import path
from student import views

from django.conf import settings
from django.conf.urls.static import static
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
	path('student_csv',views.student_csv),
	path('upload_csv',views.upload_csv,name='upload_csv')
	# url(r'^upload/csv/$', views.upload_csv, name='upload_csv')
	]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)