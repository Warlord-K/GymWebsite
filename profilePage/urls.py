from django.urls import path
from . import views
from django.contrib.auth.decorators import login_required
#now import the views.py file into this code
from . import views
urlpatterns=[
  path('', login_required(views.profile), name='profile'),
]