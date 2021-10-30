from django.db import models
from django.contrib.humanize.templatetags.humanize import naturaltime


class City(models.Model):
    """This is city model, which will be used in Event model for fetching data according to user location."""

    city_name = models.CharField(max_length=255)
    city_id = models.CharField(max_length=255)

    class Meta:
        """Meta definition for City."""

        verbose_name = 'City'
        verbose_name_plural = 'Cities'

    def __str__(self):
        return self.city_name


class Area(models.Model):
    """This is area model, which will be used in Event model to further fetch data according to user location."""

    area_name = models.CharField(max_length=255)
    area_id = models.CharField(max_length=255)

    def __str__(self):
        return self.area_name


class Event(models.Model):
    """This is the main Event model. This model is the model returned to the user. This model have Area & City model as 
    foreign keys to filter data."""

    # basic info
    username = models.CharField(max_length=50)
    title = models.CharField(max_length=50)
    content = models.CharField(max_length=255)

    # location info
    latitude = models.CharField(max_length=255)
    longitude = models.CharField(max_length=255)

    area = models.ForeignKey(Area, on_delete=models.CASCADE)
    city = models.ForeignKey(City, on_delete=models.CASCADE)

    date_time = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ('-id',)

    def get_date_time(self):
        return naturaltime(self.date_time)

    def __str__(self):
        return f"{self.username} added {self.title}"
