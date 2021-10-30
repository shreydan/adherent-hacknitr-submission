from django.urls import path

from .apis import EventsAPI

urlpatterns = [
    path("events", EventsAPI.as_view(), name="events"),
]
