from django.urls import path
from . import views

urlpatterns = [
    path("", views.index, name="tech"),
    path("additem/", views.additem, name="additem"),
]
