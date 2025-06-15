import 'package:comida_food_delivery_app/core/routing/app_routes.dart';
import 'package:comida_food_delivery_app/features/auth/login_view.dart';
import 'package:comida_food_delivery_app/features/auth/signup_view.dart';
import 'package:comida_food_delivery_app/features/home/home_view.dart';
import 'package:comida_food_delivery_app/features/onBoarding/onBoarding_view.dart';
import 'package:comida_food_delivery_app/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoutesGenerator {
  static GoRouter mainRoutingInMyApp = GoRouter(
    errorBuilder: (context, state) =>
        const Scaffold(body: Center(child: Text('404 Not Found Error'))),
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),

      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginView(),
      ),

      GoRoute(
        path: AppRoutes.signup,
        builder: (context, state) => const SignupView(),
      ),

      GoRoute(path: AppRoutes.home, builder: (context, state) => HomeView()),
    ],
  );
}
