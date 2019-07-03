from django.contrib import admin
from django.urls import path
from assignment_submit import views
from assignment import views as aviews

urlpatterns = [
    path('', views.assignment_submit),
    path('assignment_submit', views.assignment_submit),
    path('index_sub/<int:id>/<str:asubject>/<str:afname>/<int:asbatch>', views.assignment_submit),
    path('update_sub/<int:id>', views.update_sub),
    path('add/', views.assignment_submit),
    path('assignment/', aviews.showa),
]