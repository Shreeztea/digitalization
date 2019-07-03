from django.contrib import admin
from django.urls import path
from faculty import views 
app_name='faculty'

urlpatterns = [
   	path('', views.showf,name='faculty'),
    path('faculty', views.faculty),
    path('showf/', views.showf),
    path('editf/<int:id>', views.editf),
    path('updatef/<int:id>', views.updatef),
    path('deletef/<int:id>', views.deletef),
    path('add/', views.faculty),
    ]