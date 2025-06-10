import 'package:clima/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:clima/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(528, 981),
        minTextAdapt: true,
        splitScreenMode: true,
        builder:
            (_, child) => GetMaterialApp(
              theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.dark,
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute: initialRoute,
              getPages: Nav.routes,
              initialBinding: HomeControllerBinding(),
            ),
    
    );
  }
}
