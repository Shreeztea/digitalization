from django.contrib import admin
from django.urls import path
from parent import views

urlpatterns = [
    path('', views.showp),
    path('parent',views.parent),
    path('showp/', views.showp),
    path('editp/<int:id>', views.updatep),
    path('updatep/<int:id>', views.updatep),
    path('deletep/<int:id>', views.deletep),
    path('add/',views.parent),
   
    ]