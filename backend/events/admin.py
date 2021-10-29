from django.contrib import admin

# importing models
from .models import (
    Area,
    City,
    Event,
)


@admin.register(Area)
class AreaAdmin(admin.ModelAdmin):
    list_display = ('area_name',)


@admin.register(City)
class CityAdmin(admin.ModelAdmin):
    list_display = ('city_name',)


@admin.register(Event)
class EventAdmin(admin.ModelAdmin):
    '''Admin View for Event'''

    list_display = ('username', 'title',)
    list_display_links = ('title',)
    list_per_page = 15
    search_fields = ('area__area_name', 'city__city_name',)
