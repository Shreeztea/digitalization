from django.contrib import admin
from django.urls import path
from attendance import views
app_name = 'attendance'
urlpatterns = [
	path('', views.attendance,name='attendance'),
    path('take', views.take_attendance),
    path('update_attendance/<str:faculty>/<int:batch>',views.update_attendance),
    path('attendance_std',views.attendance_std,name='attendance_std'),
    path('view',views.view_attendance)
    ]