import 'package:flutter/material.dart';

import 'package:hubx_case/core/theme/app_theme.dart';
import 'package:hubx_case/core/routing/app_router.dart';
import 'package:hubx_case/core/constants/app_routes.dart';
import 'package:hubx_case/core/di/app_container.dart';
import 'package:hubx_case/core/services/preferences_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppContainer.registerServices();
  
  final prefs = AppContainer.getIt<PreferencesService>();
  final initialRoute = prefs.hasOnboarded ? AppRoutes.home : AppRoutes.getStarted;

  runApp(MainApp(initialRoute: initialRoute));
}

class MainApp extends StatelessWidget {
  final String initialRoute;
  
  const MainApp({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      initialRoute: initialRoute,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
