from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    # for admin
    path('admin/', admin.site.urls),

    # for events
    path('', include("events.urls"))

]
