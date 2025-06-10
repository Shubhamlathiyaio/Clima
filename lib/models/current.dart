import 'package:clima/models/condition.dart';

class Current {
  final double tempC, feelslikeC, windKph, uv;
  final int humidity;
  final Condition condition;

  Current({
    required this.tempC,
    required this.feelslikeC,
    required this.windKph,
    required this.uv,
    required this.humidity,
    required this.condition,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        tempC: json['temp_c'],
        feelslikeC: json['feelslike_c'],
        windKph: json['wind_kph'],
        uv: json['uv'],
        humidity: json['humidity'],
        condition: Condition.fromJson(json['condition']),
      );
}
