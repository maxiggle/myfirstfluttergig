import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../localstorage_service.dart';
import 'settings_service.dart';

class SettingsController with ChangeNotifier {
  SettingsController(this._settingsService);

  final SettingsService _settingsService;

  String? _language;

  Locale? get language => _language != null ? Locale(_language!) : null;

  String get currentLanguage {
    final langStr = language?.languageCode ?? Platform.localeName;
    return languages[langStr] ?? langStr;
  }

  Map<String?, String> languages = {
    null: 'System Default',
    'en': 'English',
    'he': 'Hebrew',
  };

  Future<void> loadSettings() async {
    _language = await _settingsService.getLanguage();

    notifyListeners();
  }

  Future<void> updateLanguage(String? newLanguage) async {
    if (newLanguage == _language) return;

    _language = newLanguage;

    notifyListeners();

    await _settingsService.updateLanguage(newLanguage);
  }
}

final podOfSettingsController =
    ChangeNotifierProvider<SettingsController>((ref) {
  final localStorage = ref.watch(podOfLocalStorageService);

  return SettingsController(SettingsService(localStorage));
});
