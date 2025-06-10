import 'package:clima/models/current.dart';
import 'package:clima/models/location..dart';

class Weather {
  final Location location;
  final Current current;

  Weather({required this.location, required this.current});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        location: Location.fromJson(json['location']),
        current: Current.fromJson(json['current']),
      );
}