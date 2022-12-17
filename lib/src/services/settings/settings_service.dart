import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  SharedPreferences localStorage;

  SettingsService(this.localStorage);

  Future<String?> getLanguage() async {
    final lang = localStorage.getString('language');
    Intl.defaultLocale = lang;

    return lang;
  }

  Future<void> updateLanguage(String? language) async {
    Intl.defaultLocale = language;

    if (language == null) {
      localStorage.remove('language');
    } else {
      localStorage.setString('language', language);
    }
  }
}
