import 'package:flutter_test/flutter_test.dart';
import 'package:hubx_case/core/services/preferences_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('PreferencesService Tests', () {
    test('hasOnboarded returns false by default when not set', () async {
      SharedPreferences.setMockInitialValues({});
      final prefs = await SharedPreferences.getInstance();
      final service = PreferencesService(prefs);

      expect(service.hasOnboarded, false);
    });

    test('hasOnboarded returns true when initialized with true', () async {
      SharedPreferences.setMockInitialValues({'has_onboarded': true});
      final prefs = await SharedPreferences.getInstance();
      final service = PreferencesService(prefs);

      expect(service.hasOnboarded, true);
    });

    test('setHasOnboarded updates value in preferences', () async {
      SharedPreferences.setMockInitialValues({});
      final prefs = await SharedPreferences.getInstance();
      final service = PreferencesService(prefs);

      expect(service.hasOnboarded, false);

      await service.setHasOnboarded(true);

      expect(service.hasOnboarded, true);
    });
  });
}
