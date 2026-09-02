import 'package:flutter/material.dart';
import 'package:hubx_case/core/constants/app_routes.dart';
import 'package:hubx_case/features/get_started/pages/get_started_page.dart';
import 'package:hubx_case/features/onboarding/pages/onboarding_page.dart';
import 'package:hubx_case/features/paywall/pages/paywall_page.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.getStarted:
        return MaterialPageRoute(builder: (_) => const GetStartedPage());
      case AppRoutes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingPage());
      case AppRoutes.paywall:
        return MaterialPageRoute(builder: (_) => const PaywallPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
