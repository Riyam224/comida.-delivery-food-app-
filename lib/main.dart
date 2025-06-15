import 'package:comida_food_delivery_app/core/routing/routes_generator.dart';
import 'package:comida_food_delivery_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  runApp(ComidaDeliveryFoodApp());
}

class ComidaDeliveryFoodApp extends StatelessWidget {
  const ComidaDeliveryFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: RoutesGenerator.mainRoutingInMyApp,
          theme: AppTheme.lightTheme,
        );
      },
    );
  }
}
