import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService extends GetxController {
  final _getStorage = GetStorage();
  final storageKey = "isDarkMode";
  final storageKeyLanguage = "isDefaultLanguage";

  String _selectedLanguage = "English";
  String get selectedLanguage => _selectedLanguage;
  ThemeMode getThemeMode() {
    return isSaveDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  bool isSaveDarkMode() {
    return _getStorage.read(storageKey) ?? false;
  }

  void saveThemeMode(bool isDarkMode) {
    _getStorage.write(storageKey, isDarkMode);
  }

  void changeThemeMode() {
    Get.changeThemeMode(isSaveDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeMode(!isSaveDarkMode());
  }

  Locale getDefaultLanguage() {
    if (isSaveDefaultLanguage()) {
      _selectedLanguage = "English";
    } else {
      _selectedLanguage = "Myanmar";
    }
    update();
    return isSaveDefaultLanguage() ? Locale('en', 'US') : Locale('my', 'MM');
  }

  bool isSaveDefaultLanguage() {
    return _getStorage.read(storageKeyLanguage) ?? false;
  }

  void saveDefaultLanguage(bool isDefaultLanguage) {
    _getStorage.write(storageKeyLanguage, isDefaultLanguage);
  }

  void changeDefaultLanguage(String l) {
    Get.back();
    if (l == "English") {
      Locale locale = Locale('en', 'US');
      Get.updateLocale(locale);
      saveDefaultLanguage(true);
      _selectedLanguage = "English";
    } else {
      Locale locale = Locale('my', 'Myanmar');
      Get.updateLocale(locale);
      saveDefaultLanguage(false);
      _selectedLanguage = "Myanmar";
    }
    update();
    print(_selectedLanguage + "dfg");
  }
}
