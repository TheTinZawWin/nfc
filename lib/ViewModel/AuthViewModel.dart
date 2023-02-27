import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Model/LoginModel.dart';
import '../Repository/LoginRepository.dart';
class AuthViewModel extends GetxController {
  ValueNotifier<bool> get checkAlreadyLogin => _checkAlreadyLogin;
  final ValueNotifier<bool> _checkAlreadyLogin = ValueNotifier(false);
  String email = "", password = "", name = "";

  String get languageName => _languageName;
  String _languageName = "English";
  final LoginRepository _loginRepository = LoginRepository();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("HI");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  Future<LoginResultModel> processLoginGet(
      String email, String password) async {
    var result = await _loginRepository.login(email, password);
    print(result);
    return result;
  }

  changeLanguage(String l) {
    _languageName = l;
    update();
    Get.back();
    if (l == "English") {
      Locale locale = Locale('en', 'US');
      Get.updateLocale(locale);
    } else {
      Locale locale = Locale('my', 'Myanmar');
      Get.updateLocale(locale);
    }
    print("l" + _languageName);
  }
}
