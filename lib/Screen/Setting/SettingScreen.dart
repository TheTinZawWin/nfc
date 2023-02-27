import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:get/get.dart';
import '../../Helper/ThemeService.dart';
import '../../Helper/constants.dart';
import '../../Helper/SizeConfig.dart';
import '../../Model/LanguageModel.dart';
class SettingScreen extends GetView<ThemeService> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text(
            "nav_memnu_setting".tr,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(24),
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            // textAlign: TextAlign.center,
          )),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SettingsGroup(
            title: 'theme'.tr,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 18.0),
                            child: IconWidget(
                                color: kPrimaryPupbleColor,
                                icon: Icons.language),
                          ),
                          Text('language'.tr),
                        ],
                      )),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          elevation: 0,
                          value: controller.selectedLanguage,
                          items: languageList
                              .map((e) => DropdownMenuItem<String>(
                                    child: Text(
                                      e,
                                      //style: TextStyle(color: kTextColor),
                                    ),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (e) {
                            controller.changeDefaultLanguage(e!);
                            //controller.changeLanguage(e!);
                            // print(controller.languageName);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // DropDownSettingsTile<int>(
              //   title: 'Language',
              //   settingKey: 'key-dropdown-email-view',
              //   values: <int, String>{
              //     2: 'Simple',
              //     3: 'Adjusted',
              //     4: 'Normal',
              //     5: 'Compact',
              //     6: 'Squizzed',
              //   },
              //   selected: 2,
              //   onChange: (value) {
              //     debugPrint('key-dropdown-email-view: $value');
              //   },
              // ),
              SwitchSettingsTile(
                settingKey: 'key-dark-mode',
                title: 'dark_mode'.tr,
                //enabledLabel: 'Enabled',
                //disabledLabel: 'Disabled',
                leading:
                    IconWidget(color: kPrimaryTosca, icon: Icons.dark_mode),
                onChange: (value) {
                  print(value);
                  ThemeService().changeThemeMode();
                },
              ),
            ],
          ),
          SettingsGroup(
            title: 'general'.tr,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: SimpleSettingsTile(
                  title: 'logout'.tr,
                  subtitle: '',
                  leading: IconWidget(color: Colors.green, icon: Icons.logout),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: SimpleSettingsTile(
              title: 'about'.tr,
              subtitle: '',
              leading: IconWidget(color: Colors.blueAccent, icon: Icons.info),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "v1.1.0",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  const IconWidget({Key? key, required this.color, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
