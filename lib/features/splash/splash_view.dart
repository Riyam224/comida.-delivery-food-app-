// ignore_for_file: use_build_context_synchronously

import 'package:comida_food_delivery_app/core/routing/app_routes.dart';
import 'package:comida_food_delivery_app/core/theme/app_colors.dart';
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
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward();

    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).go(AppRoutes.onboarding);
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
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/splash/logo.png",
                width: 200.w,
                height: 200.h,
              ),
            ),
            SizedBox(
              width: 325,
              height: 54,
              child: Text(
                'Comida',
                textAlign: TextAlign.center,
                style: TextStyles.splashScreen,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.primaryMainOrange,
      resizeToAvoidBottomInset: false,
    );
  }
}
