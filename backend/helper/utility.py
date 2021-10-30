# python imports
import os
import dotenv
from pathlib import Path

import requests


# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# setting up dot env
dotenv_file = os.path.join(BASE_DIR, ".env")
if os.path.isfile(dotenv_file):
    dotenv.load_dotenv(dotenv_file)


def get_city_id(lat, lon):
    """This function takes latitude and longitude as arguments and returns city id. NOTE: For this function to work 
    you have to set API_KEY in .evn file. You can get API_KEY from mapbox website."""

    api_key = os.environ["API_KEY"]
    params = {
        'access_token': api_key,
        'types': "district",
    }
    url = f"https://api.mapbox.com/geocoding/v5/mapbox.places/{lat},{lon}.json"
    request = requests.get(url, params=params)

    features = request.json()["features"]
    if len(features) == 0:  # meaning there is no such district with provided latitude & longitude
        return None

    else:
        cityId = features[0]["id"].replace("district.", "")
        cityName = features[0]["text"]

    return cityId, cityName


def get_area_detail(lat, lon):
    """This function takes latitude & longitude as arguments and returns unique id for an area(data will be fetched from 
    API). NOTE: For this function to work you have to set API_KEY in .evn file. You can get API_KEY from mapbox website."""

    api_key = os.environ["API_KEY"]
    params = {
        'access_token': api_key,
        'types': "locality,district",
    }
    url = f"https://api.mapbox.com/geocoding/v5/mapbox.places/{lat},{lon}.json"
    request = requests.get(url, params=params)

    features = request.json()["features"]
    if len(features) == 0:  # meaning there is no such locality or district with provided latitude & longitude
        return None

    areaPrimartId = features[0]["id"].replace("locality.", "")
    areaName = features[0]["text"]

    cityPrimartId = features[1]["id"].replace("district.", "")
    cityName = features[1]["text"]

    result = {
        "areaPrimartId": areaPrimartId,
        "areaName": areaName,
        "cityPrimartId": cityPrimartId,
        "cityName": cityName,
    }

    return result
