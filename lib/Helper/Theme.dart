
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
class Themes {
  final ligntTheme = ThemeData.light().copyWith(
      primaryColor: kPrimaryColor,
      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          toolbarTextStyle:
              TextTheme(headline1: TextStyle(color: kTextColor)).bodyText2,
          titleTextStyle:
              TextTheme(headline1: TextStyle(color: kTextColor)).headline6));

  final darkTheme = ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          toolbarTextStyle:
              TextTheme(headline1: TextStyle(color: kPrimaryLightColor))
                  .bodyText2,
          titleTextStyle:
              TextTheme(headline1: TextStyle(color: kPrimaryLightColor))
                  .headline6));
}
