import 'package:clima/core/services/weather_api_services.dart';
import 'package:clima/models/weather.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Weather? weather;

  @override
  void onInit() {
    super.onInit();
    getWeather();
  }

  Future<void> getWeather() async {
    weather = await WeatherApiServices.getWeather();
    print(weather?.current.tempC);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
