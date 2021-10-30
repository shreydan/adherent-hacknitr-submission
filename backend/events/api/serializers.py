# rest framework imports
from rest_framework import serializers


# local imports
from events.models import (
    Event,
)


class EventSerializer(serializers.ModelSerializer):

    date_time = serializers.SerializerMethodField()
    area_name = serializers.SerializerMethodField()
    city_name = serializers.SerializerMethodField()

    class Meta:
        model = Event
        fields = (
            'username',
            'title',
            'content',
            'date_time',
            'longitude',
            'latitude',
            'area_name',
            'city_name',
        )
        extra_kwargs = {
            'longitude': {'write_only': True, },
            'latitude': {'write_only': True, },
        }

    def get_date_time(self, obj):
        return obj.get_date_time()

    def get_area_name(self, obj):
        return obj.area.area_name

    def get_city_name(self, obj):
        return obj.city.city_name
