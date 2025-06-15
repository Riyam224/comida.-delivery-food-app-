import 'package:comida_food_delivery_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    primaryColor: AppColors.primaryMainOrange,
    scaffoldBackgroundColor: AppColors.whiteColor,
    fontFamily: AppFonts.fontFamily,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.blackColor),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
      ),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    primaryColor: AppColors.primaryMainOrange,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: AppFonts.fontFamily,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.whiteColor),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
      ),
    ),
  );
}
