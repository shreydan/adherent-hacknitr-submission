import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../model/eventsmodel.dart';

class EventsItem {
  List<Result> events = [];
  bool hasMore = true;

  Future<void> getEvents({page = 1}) async {
    var url = Uri.parse("https://adherent.herokuapp.com/api/events?$page");

    var response = await http.get(url, headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    });

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      jsonData["results"].forEach((ele) {
        Result event = Result(
          username: ele["username"],
          title: ele["title"],
          content: ele["content"],
          dateTime: ele["date_time"],
          areaName: ele["area_name"],
          cityName: ele["city_name"],
        );
        events.add(event);
      });
    }
  }
}
