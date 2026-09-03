import 'package:get_it/get_it.dart';
import 'package:hubx_case/data/services/home_service.dart';
import 'package:hubx_case/data/repositories/home_repository.dart';
import 'package:hubx_case/core/services/preferences_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logger/logger.dart';

class AppContainer {
  static final GetIt getIt = GetIt.instance;

  static Future<void> registerServices() async {
    // Core
    final sharedPreferences = await SharedPreferences.getInstance();
    getIt.registerSingleton<PreferencesService>(PreferencesService(sharedPreferences));
    getIt.registerLazySingleton<Logger>(() => Logger());

    // Services
    getIt.registerLazySingleton<HomeService>(() => HomeService());

    // Repositories
    getIt.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl());
  }
}
