import 'package:clima/models/weather.dart';
import 'package:dio/dio.dart';

class WeatherApiServices {
  static const String _apiKey = "4227f6dd22b5492f99c72722250906";
  static const String _baseUrl = "http://api.weatherapi.com/v1";
  static const String forecast = "forecast.json";
  static const String current = "current.json";
  static const String auto = "auto:ip";

  static Future<Weather> getWeather([String place = auto]) async {
    Response response = await Dio().get(
      '$_baseUrl/$forecast?key=$_apiKey&q=$place',
    );
    print(response.data);
    return Weather.fromJson(response.data);
  }
}
// http://api.weatherapi.com/v1/current.json?key=4227f6dd22b5492f99c72722250906&q=Rajkot