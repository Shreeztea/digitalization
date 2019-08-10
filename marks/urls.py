from django.contrib import admin
from django.urls import path
from marks import views

from django.conf import settings
from django.conf.urls.static import static

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
    path('marks_std',views.marks_std,name='marks_std'),
    path('marks_csv',views.marks_csv),
	path('upload_csv',views.upload_csv,name='upload_marks_csv')
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
