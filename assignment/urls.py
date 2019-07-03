from django.contrib import admin
from django.urls import path
from assignment import views
app_name='assignment'

urlpatterns = [
    path('', views.showa,name='assignment'),
    path('assignment', views.assignment),
    path('showa/', views.showa),
    path('edita/<int:id>', views.updatea),
    path('updatea/<int:id>', views.updatea),
    path('deletea/<int:id>', views.deletea),
    path('add/', views.assignment),
    path('pdf_download/<str:filename>', views.pdf_download,name='file_download'),
    path('file_view/<str:filename>', views.file_view,name='file_view'),
    path('assignment_std',views.assignment_std,name='assignment_std')
]
