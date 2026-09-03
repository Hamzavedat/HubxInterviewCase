import 'package:flutter/material.dart';
import 'package:hubx_case/core/constants/app_routes.dart';
import 'package:hubx_case/features/get_started/pages/get_started_page.dart';
import 'package:hubx_case/features/onboarding/pages/onboarding_page.dart';
import 'package:hubx_case/features/paywall/pages/paywall_page.dart';
import 'package:hubx_case/features/dashboard/pages/dashboard_page.dart';
import 'package:hubx_case/data/models/category_model.dart';
import 'package:hubx_case/data/models/question_model.dart';
import 'package:hubx_case/features/home/pages/category_detail_page.dart';
import 'package:hubx_case/features/home/pages/question_detail_page.dart';
import 'package:hubx_case/features/scanner/pages/scanner_page.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.getStarted:
        return MaterialPageRoute(builder: (_) => const GetStartedPage());
      case AppRoutes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingPage());
      case AppRoutes.paywall:
        return MaterialPageRoute(builder: (_) => const PaywallPage());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      case AppRoutes.categoryDetail:
        final args = settings.arguments;
        if (args is CategoryModel) {
          return MaterialPageRoute(
            builder: (_) => CategoryDetailPage(category: args),
          );
        }
        return _errorRoute();
      case AppRoutes.questionDetail:
        final args = settings.arguments;
        if (args is QuestionModel) {
          return MaterialPageRoute(
            builder: (_) => QuestionDetailPage(question: args),
          );
        }
        return _errorRoute();
      case AppRoutes.scanner:
        return MaterialPageRoute(builder: (_) => const ScannerPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(body: Center(child: Text('Route not found'))),
    );
  }
}
