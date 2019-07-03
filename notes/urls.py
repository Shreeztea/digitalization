from django.contrib import admin
from django.urls import path
from notes import views
app_name='notes'
urlpatterns = [
    path('', views.shown,name='notes'),
    path('notes',views.notes),
    path('shown/', views.shown),
    path('editn/<int:id>', views.updaten),
    path('updaten/<int:id>', views.updaten),
    path('deleten/<int:id>', views.deleten),
    path('add/',views.notes),
    path('notes_std',views.notes_std,name='notes_std'),
    
    ]