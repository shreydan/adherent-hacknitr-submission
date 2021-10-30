// To parse this JSON data, do
//
//     final events = eventsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Events eventsFromJson(String str) => Events.fromJson(json.decode(str));

String eventsToJson(Events data) => json.encode(data.toJson());

class Events {
  Events({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  final int count;
  final dynamic next;
  final dynamic previous;
  final List<Result> results;

  factory Events.fromJson(Map<String, dynamic> json) => Events(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    required this.username,
    required this.title,
    required this.content,
    required this.dateTime,
    required this.areaName,
    required this.cityName,
  });

  final String username;
  final String title;
  final String content;
  final String dateTime;
  final String areaName;
  final String cityName;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        username: json["username"],
        title: json["title"],
        content: json["content"],
        dateTime: json["date_time"],
        areaName: json["area_name"],
        cityName: json["city_name"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "title": title,
        "content": content,
        "date_time": dateTime,
        "area_name": areaName,
        "city_name": cityName,
      };
}
