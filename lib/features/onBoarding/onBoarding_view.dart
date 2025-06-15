// ignore_for_file: file_names, deprecated_member_use

import 'package:comida_food_delivery_app/core/routing/app_routes.dart';
import 'package:comida_food_delivery_app/core/theme/app_colors.dart';
import 'package:comida_food_delivery_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          PageviewItem(
            bgColor: AppColors.primaryMainOrange,
            text: 'I dont feel like cooking. Lets order food delivery',
            image: "assets/images/onboarding/pizza_onboarding.png",
          ),
          SecondOnboardingpage(),
          PageviewItem(
            bgColor: AppColors.yellowColor,
            text: 'Good music and good food makes me happy.',
            image: "assets/images/onboarding/Fresh_beef_burger_onboarding.png",
          ),
        ],
      ),
    );
  }
}

class PageviewItem extends StatelessWidget {
  const PageviewItem({
    super.key,
    required this.bgColor,
    required this.text,
    required this.image,
  });
  final Color bgColor;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: bgColor,
      child: Column(
        children: [
          Container(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(-0.09),

            width: 1023.354,
            height: 585.224,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(text, style: TextStyles.onBoardingpage1),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // todo  move to  sign up
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).go(AppRoutes.signup);
                },
                child: Container(
                  width: 154.073,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.whiteColor.withOpacity(.2),
                    border: Border.all(color: AppColors.whiteColor),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 66,
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              // todo move to log in
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).go(AppRoutes.login);
                },
                child: Container(
                  width: 154.073,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.blackColor,
                    border: Border.all(color: AppColors.blackColor),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 66,
                      child: Text(
                        'Log in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondOnboardingpage extends StatelessWidget {
  const SecondOnboardingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.splashColor,
      child: Column(
        children: [
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Donut worry, be happy and eat more donuts!',
              style: TextStyles.onBoardingpage2,
            ),
          ),
          Container(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(-0.09),
            width: double.infinity,
            height: 500.44,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/onboarding/donut_onboarding.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // todo  move to  sign up
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).go(AppRoutes.signup);
                },
                child: Container(
                  width: 154.073,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.whiteColor.withOpacity(.2),
                    border: Border.all(color: AppColors.whiteColor),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 66,
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              // todo move to log in
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).go(AppRoutes.login);
                },
                child: Container(
                  width: 154.073,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.blackColor,
                    border: Border.all(color: AppColors.blackColor),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 66,
                      child: Text(
                        'Log in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
