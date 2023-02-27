// ignore_for_file: use_key_in_widget_constructors, import_of_legacy_library_into_null_safe

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfctest/ViewModel/NavigatorControlView.dart';
import '../Screen/Splash/SplashScreen.dart';
import 'AuthViewModel.dart';

class ControlViewModel extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthViewModel>(
        init: AuthViewModel(),
        builder: (controller) => controller.checkAlreadyLogin.value
            ? const SplashScreen()
            : GetBuilder<NavigatorControlView>(
                builder: (controller) => Scaffold(
                  body: controller.currentScreen,
                  bottomNavigationBar: bottomNavigationBar(),
                ),
              ));
  }
  Widget bottomNavigationBar() {
    return GetBuilder<NavigatorControlView>(
      init: NavigatorControlView(),
      builder: (controller) => BottomNavyBar(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        containerHeight: 60,
        items: [
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home),
          //   label: 'Home',
          //   //backgroundColor: Colors.white
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.playlist_add_check_circle),
          //   label: 'Attendence',
          //   //backgroundColor: Colors.white
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.event),
          //   label: 'Leave',
          //   // backgroundColor: Colors.white
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'Profile',
          //   // backgroundColor: Colors.white
          // ),
          BottomNavyBarItem(
              icon: const Icon(Icons.apps),
              title: Text('nav_memnu_home'.tr),
              //activeColor: Color.fromARGB(255, 117, 130, 245),
              activeColor: const Color.fromARGB(255, 117, 130, 245),
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: const Icon(Icons.playlist_add_check_circle),
              title: Text('nav_memnu_attendence'.tr),
              activeColor: const Color.fromARGB(255, 117, 130, 245),
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: const Icon(Icons.event),
              title: Text('nav_memnu_leaf'.tr),
              activeColor: const Color.fromARGB(255, 117, 130, 245),
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: const Icon(Icons.settings),
              title: Text('nav_memnu_setting'.tr),
              activeColor: const Color.fromARGB(255, 117, 130, 245),
              inactiveColor: Colors.grey),
        ],
        selectedIndex: controller.navigatorValue,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) {
          controller.changeSelectedValue(index);
        },
      ),
    );
  }
}
