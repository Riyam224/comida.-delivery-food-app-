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

  static TextStyle onBoardingtitle = GoogleFonts.inter(
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
  );

  static TextStyle onBoardingSubtitle = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
  );

  static TextStyle Inter14SemiBoldButton = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
  );

  static TextStyle Inter16SemiBold = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
    fontStyle: FontStyle.normal,
  );

  static TextStyle Inter24SemiBoldWhite = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
    fontStyle: FontStyle.normal,
  );

  static TextStyle Inter16SemiBoldWhitedesc = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.greyColor,
    fontStyle: FontStyle.normal,
  );
}
