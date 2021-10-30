from django.dispatch import receiver
from django.db.models.signals import pre_save


from .models import (
    Area,
    City,
    Event,
)

from helper.utility import get_area_detail, get_city_id


@receiver(pre_save, sender=Event)
def event_pre_save(sender, instance, *args, **kwargs):
    """This function runs before the model is saved. This function calls helper function we made to get user location details."""
    result = get_area_detail(
        instance.latitude, instance.longitude)

    area, created = Area.objects.get_or_create(
        area_name=result["areaName"],
        area_id=result["areaPrimartId"]
    )
    city, _created = City.objects.get_or_create(
        city_name=result["cityName"],
        city_id=result["cityPrimartId"]
    )

    instance.area = area
    instance.city = city
