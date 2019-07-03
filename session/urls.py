from django.contrib import admin
from django.urls import path
from session import views
app_name='session'
urlpatterns = [
	path('',views.index,name='login' ),
	path('loginauth/',views.loginauth ),
	path('logout/',views.logout,name='logout' ),
	
	]