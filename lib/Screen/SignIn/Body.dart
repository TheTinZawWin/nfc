// ignore_for_file: prefer_const_constructors
// ignore_for_file: sized_box_for_whitespace
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors_in_immutables
// ignore_for_file: deprecated_member_use
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: argument_type_not_assignable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Helper/SizeConfig.dart';
import '../../ViewModel/AuthViewModel.dart';
import 'SignInForm.dart';

class Body extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Container(
                  width: 130,
                  height: 130,
                  child: CircleAvatar(
                    child: Image.asset(
                      "assets/images/nfc_logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  "login_welcome".tr,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text(
                //   "Sign in with your email and password.",
                //   textAlign: TextAlign.center,
                // ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SocalCard(
                //       icon: "assets/icons/google-icon.svg",
                //       press: () {
                //         // controller.googleSignInMethod();
                //       },
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/facebook-2.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/Phone.svg",
                //       press: () {
                //         // Navigator.pushNamed(context, PhoneScreen.routeName);
                //       },
                //     ),
                //   ],
                // ),
                // SizedBox(height: getProportionateScreenHeight(20)),
                // NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
