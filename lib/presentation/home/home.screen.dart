import 'package:clima/configs/configs.dart';
import 'package:clima/core/services/location_services.dart';
import 'package:clima/presentation/components/bg.dart';
import 'package:clima/presentation/components/deviders/v_devider.dart';
import 'package:clima/presentation/home/controllers/home.controller.dart';
import 'package:clima/presentation/home/widgets/search_componet.dart';
import 'package:clima/presentation/theme/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LocationServices location = LocationServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() {
    location.getCurrentLocation().then((value) {
      print(location.latitude);
      print(location.longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: context.colorScheme.onPrimary,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: GetBuilder(
        init: HomeController(),
        builder: (controller) {
          print(controller.weather?.current.tempC);
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  gap.h36,

                  Text("Weather", style: context.text.headlineLarge),
                  gap.h10,
                  Text(
                    "Stay updated with current weather",
                    style: context.text.labelLarge?.textColor(
                      context.colorScheme.primary.withOpacity(.5),
                    ),
                  ),
                  gap.h32,
                  SearchComponet(),
                  gap.h36,
                  Flexible(
                    child: Bg(
                      width: 488.w,
                      height: 440.h,
                      child: Padding(
                        padding: edge.all40,
                        child: Column(
                          children: [
                            Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.location_on),
                                  Text("New York, NY"),
                                ],
                              ),
                            gap.h20,
                            FlutterLogo(size: 66),
                            Text(
                              "24°",
                              style: context.text.headlineLarge?.fs40,
                            ),
                            gap.h15,
                            Text(
                              "Sunny",
                              style: context.text.bodyLarge?.fs20.textColor(
                                context.colorScheme.primary.withOpacity(.6),
                              ),
                            ),
                            gap.h24,
                            VDevider(width: 440.w),
                            gap.h24,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                info(Icons.visibility, "Visibility", "10 km"),
                                info(Icons.water_drop, "Humidity", "65%"),
                                info(Icons.air, "Wind", "12 km/h"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: edge.all24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Bg(height: 118.h,
                          width: (Get.width - 48) * .48,
                          child: Column(
                            children: [
                              Padding(
                                padding: edge.all20,
                                child: info(
                                  Icons.water_drop,
                                  "Humidity",
                                  "65%",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Bg(height: 118  .h,
                          width: (Get.width - 48) * .48,
                          child: Column(
                            children: [
                              Padding(
                                padding: edge.all20,
                                child: info(
                                  Icons.water_drop,
                                  "Humidity",
                                  "65%",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Bg(
                    height: 54.h,
                    width: 240.w,
                    child: Padding(
                      padding: edge.all15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.cached),
                          gap.w15,
                          Text("Refresh Weather", style: context.text.bodyLarge?.fs18),
                        ],
                      ),
                    ),
                  ),
                  gap.h32,
                  Text(
                    "Last updated: Just now",
                    style: context.text.labelMedium?.textColor(
                      context.colorScheme.primary.withOpacity(.5),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget info(IconData icon, String text, String value) {
    return Column(
      children: [
        Icon(icon),
        gap.h6,
        Text(text, style: context.text.bodyMedium),
        gap.h2,
        Text(value, style: context.text.labelLarge),
      ],
    );
  }
}
