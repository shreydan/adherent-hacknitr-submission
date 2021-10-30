from django.urls import path, include

app_name = "events"

urlpatterns = [
    path('api/', include("events.api.urls")),
]
