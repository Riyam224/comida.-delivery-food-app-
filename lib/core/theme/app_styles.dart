// ignore_for_file: non_constant_identifier_names

import 'package:comida_food_delivery_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle splashScreen = GoogleFonts.poppins(
    fontSize: 40.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
    height: 1.25,
  );

  static TextStyle onBoardingpage1 = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    height: 1.22,
  );

  static TextStyle onBoardingpage2 = GoogleFonts.poppins(
    color: AppColors.whiteColor,
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    height: 1.22,
  );
}
