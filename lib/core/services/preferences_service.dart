import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  final SharedPreferences _prefs;
  static const String _keyHasOnboarded = 'has_onboarded';

  PreferencesService(this._prefs);

  bool get hasOnboarded => _prefs.getBool(_keyHasOnboarded) ?? false;

  Future<void> setHasOnboarded(bool value) async {
    await _prefs.setBool(_keyHasOnboarded, value);
  }
}
