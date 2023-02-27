
import 'package:get/get.dart';
import 'package:nfctest/ViewModel/NavigatorControlView.dart';

import '../ViewModel/AuthViewModel.dart';
import '../ViewModel/ControlViewModel.dart';
import 'ThemeService.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.create(() => AuthViewModel());
    Get.lazyPut(() => ControlViewModel());
    Get.lazyPut(() => NavigatorControlView());
    Get.lazyPut(() => ThemeService());
  }
}
