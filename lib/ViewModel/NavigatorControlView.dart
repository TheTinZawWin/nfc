import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screen/Attendence/AttendenceScreen.dart';
import '../Screen/Home/HomeScreen.dart';
import '../Screen/Leave/LeaveScreen.dart';
import '../Screen/Setting/SettingScreen.dart';
class NavigatorControlView extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;

  Widget currentScreen = const HomeScreen();
  void changeSelectedValue(int selectedValue) {
    _loading.value = true;
    _navigatorValue = selectedValue;
    print("selected"+selectedValue.toString());
    switch (selectedValue) {
      case 0:
        {
          currentScreen = HomeScreen();
          break;
        }
      case 1:
        {
          currentScreen = AttendenceScreen();
          break;
        }
      case 2:
        {
          currentScreen = LeaveScreen();
          break;
        }
      case 3:
        {
          currentScreen = SettingScreen();
          break;
        }
    }
    _loading.value = false;
    update();
  }
}
