from django.contrib import admin
from django.urls import path
from routine import views
app_name='routine'

urlpatterns = [
	path('',views.routine,name='routine'),
	path('routine',views.routine),
	path('add/',views.add),
]