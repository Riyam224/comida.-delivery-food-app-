// // ignore_for_file: use_build_context_synchronously

// ignore_for_file: unused_field, use_build_context_synchronously

import 'package:comida_food_delivery_app/core/extras/app_constants.dart';
import 'package:comida_food_delivery_app/core/routing/app_routes.dart';
import 'package:comida_food_delivery_app/core/services/shared_pref.dart';
import 'package:comida_food_delivery_app/core/theme/app_colors.dart';
import 'package:comida_food_delivery_app/core/theme/app_fonts.dart';
import 'package:comida_food_delivery_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    excuteNavigation();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward();
  }

  // todo func to handle navig using shared pref
  void excuteNavigation() {
    Future.delayed(Duration(seconds: 4), () {
      bool isOnBoardingView = SharedPref.getBool(kIsOnboardingViewSeen);

      if (isOnBoardingView) {
        GoRouter.of(context).go(AppRoutes.login);
      } else {
        GoRouter.of(context).go(AppRoutes.onboarding);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColors.primaryMainOrange,
          ),
          Positioned(
            top: 60,
            left: 25,
            child: InkWell(
              onTap: () {
                // todo shared prefernces
                SharedPref.setBool(kIsOnboardingViewSeen, true);
                GoRouter.of(context).go(AppRoutes.login);
              },
              child: Text(
                'skip',
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 18.sp,
                  fontFamily: AppFonts.fontFamily,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),

          Positioned(
            top: 350,
            right: 0,
            left: 0,
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: Image.asset(
                "assets/images/splash/logo.png",
                width: 160.w,
                height: 160.h,
              ),
            ),
          ),

          Positioned(
            top: 540,
            right: 0,
            left: 0,
            child: SizedBox(
              width: 325.w,
              height: 54.h,
              child: Text(
                'Comida',
                textAlign: TextAlign.center,
                style: TextStyles.splashScreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
