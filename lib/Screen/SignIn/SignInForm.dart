// ignore_for_file: prefer_const_constructors
// ignore_for_file: sized_box_for_whitespace
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors_in_immutables
// ignore_for_file: deprecated_member_use
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: argument_type_not_assignable
// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Helper/constants.dart';
import '../../Helper/SizeConfig.dart';
import '../../ViewModel/AuthViewModel.dart';
import '../../ViewModel/ControlViewModel.dart';
import '../Components/components/custom_surffix_icon.dart';
import '../Components/components/default_button.dart';
import '../Components/components/form_error.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool? remember = false;
  bool viewpassword = false;
  final List<String?> errors = [];
  @override
  void initState() {
    super.initState();
    // checkInternet().checkConnection(context);
  }

  @override
  void dispose() {
    // checkInternet().listener.cancel();
    super.dispose();
  }

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthViewModel>(
      init: AuthViewModel(),
      builder: (controller) => Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(controller),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(controller),
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                Text("login_remember".tr),
                Spacer(),
                GestureDetector(
                  // onTap: () => Navigator.pushNamed(
                  //     context, ForgotPasswordScreen.routeName),
                  child: Text(
                    "login_fogot_password".tr,
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(20)),
            GetBuilder<AuthViewModel>(
              init: AuthViewModel(),
              builder: (controller) => DefaultButton(
                text: "login_button".tr,
                press: () async {
                  if(_formKey.currentState!.validate()){
                      var result = await controller.processLoginGet(
                          email.text, password.text);
                      if (result.statusCode == 200 &&
                          result.message == "Success") {
                            Navigator.of(context).pop();
                        Get.to(ControlViewModel());
                      }
                }
                }
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField(AuthViewModel controller) {
    return TextFormField(
      obscureText: !viewpassword,
      onSaved: (newValue) => password.text = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password.text = value;
        controller.password = value;
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        }
        // } else if (value.length < 8) {
        //   addError(error: kShortPassError);
        //   return "";
        // }
        return null;
      },
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10),
          //labelText: "Password",
          hintText: "login_password".tr,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                if (viewpassword == true) {
                  viewpassword = false;
                } else {
                  viewpassword = true;
                }
              });
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  0,
                  getProportionateScreenWidth(20),
                  getProportionateScreenWidth(20),
                  getProportionateScreenWidth(20)),
              child: Icon(
                viewpassword ? Icons.visibility : Icons.visibility_off,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          )),
    );
  }

  TextFormField buildEmailFormField(AuthViewModel controller) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email.text = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        email.text = value;
        controller.email = value;
        return null;
      },
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     addError(error: kEmailNullError);
      //     return "";
      //   } else if (!emailValidatorRegExp.hasMatch(value)) {
      //     addError(error: kInvalidEmailError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 10),
        // labelText: "Email",
        hintText: "login_email".tr,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
