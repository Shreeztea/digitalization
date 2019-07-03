from django.contrib import admin
from django.urls import path
from marks import views
app_name='marks'
urlpatterns = [
    path('', views.marks,name='marks'),
    # path('marks', views.ms),
    path('showm/', views.showm),
    path('editm/<int:id>', views.updatem),
    path('updatem/<int:id>', views.updatem),
    path('deletem/<int:id>', views.deletem),
    path('mark/', views.mark),
    path('add_marks/', views.add_marks,name='add_marks'),
    path('marks_std',views.marks_std,name='marks_std')
]
