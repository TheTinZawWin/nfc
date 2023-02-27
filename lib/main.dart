import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nfctest/Screen/Home/HomeScreen.dart';
import 'package:nfctest/Screen/Splash/SplashScreen.dart';
import 'package:nfctest/ViewModel/ControlViewModel.dart';

import 'Helper/Binding.dart';
import 'Helper/Theme.dart';
import 'Helper/ThemeService.dart';
import 'Helper/local_language_string.dart';
void main() async{
 WidgetsFlutterBinding.ensureInitialized();
   //overlaystyle
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    //  systemNavigationBarColor: Colors.transparent
  ));

//cannot get landscape
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

      await GetStorage.init();
//for setting ui
  await Settings.init(cacheProvider: SharePreferenceCache());
       runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      translations: LocalLanguageString(),
      locale: ThemeService().getDefaultLanguage(),
      initialBinding: Binding(),
      home:const Scaffold(
        body:SplashScreen(),
      ),
       theme: Themes().ligntTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode(),
    );
  }
}
