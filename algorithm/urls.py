from django.contrib import admin
from django.urls import path
from algorithm import views
app_name='algorithm'

urlpatterns = [
    path('algorithm', views.algorithm,name='algorithm'),
    path('',views.student_performance,name='student_performance'),
]