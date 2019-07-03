from django.contrib import admin
from django.urls import path
from notics import views
app_name='notics'
urlpatterns = [
    path('', views.show_n,name='notice'),
    path('notice',views.notice),
    path('show_n/', views.show_n),
    path('edit_n/<int:id>', views.update_n),
    path('update_n/<int:id>', views.update_n),
    path('delete_n/<int:id>', views.delete_n),
    path('add/',views.notice),
    path('notice_std',views.notice_std,name='notice_std'),
    ]