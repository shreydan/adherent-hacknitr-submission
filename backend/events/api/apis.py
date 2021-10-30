from rest_framework.filters import SearchFilter
from rest_framework.generics import ListCreateAPIView

# local imports
from helper.utility import get_city_id

from events.models import (
    Area,
    City,
    Event,
)


from .serializers import (
    EventSerializer,
)


class EventsAPI(ListCreateAPIView):
    queryset = Event.objects.all()
    serializer_class = EventSerializer
    filter_backends = [SearchFilter, ]
    search_fields = [
        'title',
        'area__name',
    ]

    def get_queryset(self):
        latitude = self.request.GET.get("latitude")
        longitude = self.request.GET.get("longitude")

        if latitude and longitude:
            cityId = get_city_id(latitude, longitude)
            if cityId == None:
                return Event.objects.none()
            return Event.objects.filter(city__city_id=cityId).distinct()
        else:
            return Event.objects.all()
