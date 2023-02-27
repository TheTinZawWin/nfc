// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocalLanguageString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          //splash
          'splash_continue_button': 'Continue',

          //login
          'login_email': 'Enter your email',
          'login_password': 'Enter your password',
          'login_button': 'Login',
          'login_welcome': 'Welcome',
          'login_welcome_back': 'Welcome Back',
          'login_remember': 'Remember me',
          'login_fogot_password': 'Forgot Password',

          //home
          'nav_memnu_home': "Home",
          'nav_memnu_attendence': "Attendence",
          'nav_memnu_leaf': "Leave",
          'nav_memnu_setting': "Setting",
          'home_main_text': "What would like to do today?",
          'medical_leave': "Medical Leave",
          'annual_leave': "Annual Leave",
          'casual_leave': "Casual Leave",

          //attendence
          'your_address': "Address",
          'click_to_check_in': "Click to check in",
          'good_morning': "Good morning!",
          'check_in_time': "Checked in at",
          'ok': "Ok",
          'want_to_check_out': "Want to check out?",
          'today_work_hour': "Today's work hours :",
          'click_to_check_out': 'Click to check out',
          'good_bye': "Goodbye",
          'check_out_time': "Checked out at ",
          'hour': "hours",
          'minute': "minutes",
          'warning_text':
              "Warning! Last check in was over 12 hours ago.\n If this isn't right,please contact Human Resource Staff.",

          //leave

          'sort': "Sort",
          'filter': "Filter",
          'leave_type': "Time OFF TYPE",
          'date_range': "Date Range",
          "select_date": "Click here to select date",
          'start_date': "Start Date :",
          'end_date': "End Date :    ",
          'duration': "Duration",
          'leave_day': "Your Leave Day(s) :",
          'description': "Description",
          'confirm': "Confirm",

          //setting
          'theme': "Theme",
          'language': "Language",
          'dark_mode': "Dart Mode",
          'logout': "Logout",
          'about': "About",
          'general': "General"
        },
        'my_Myanmar': {
          'splash_continue_button': 'ဆက်ရန်',

          //login
          'login_email': 'အီးမေးလ်',
          'login_password': 'လှို့ဝှက်နံပါတ်',
          'login_button': 'ဝင်ရန်',
          'login_welcome': 'ကြိုဆိုပါတယ်',
          'login_welcome_back': 'ပြန်လည်ကြိုဆိုပါတယ်။',
          'login_remember': 'မှတ်ထားပါ',
          'login_fogot_password': 'လှို့ဝှက်နံပါတ်မေ့နေပါသလား',

          //home
          'nav_memnu_home': "ပင်မ",
          'nav_memnu_attendence': "စာရင်းသွင်း",
          'nav_memnu_leaf': "ခွင့်",
          'nav_memnu_setting': "ပြင်ဆင်ခြင်း",
          'home_main_text': "ဒီနေ့ဘာလုပ်ချင်တာလဲ",
          'medical_leave': "ဆေးခွင့်",
          'annual_leave': "နှစ်စဉ်ခွင့်",
          'casual_leave': "သာမန်ခွင့်",

          //attendence
          'your_address': "ယခုလက်ရှိ လိပ်စာ",
          'click_to_check_in': "အလုပ်ဝင်ရန်နှိပ်ပါ",
          'good_morning': "မင်္ဂလာနံနက်ခင်းပါ",
          'check_in_time': "အလုပ်ဝင်ရောက်ချိန်",
          'ok': "ဟုတ်ကဲ့ပါ",
          'want_to_check_out': "အလုပ်မှ ထွက်ခွါတော့မှာလား။",
          'today_work_hour': "ယနေ့အလုပ်လုပ်ချိန် :",
          'click_to_check_out': 'အလုပ်မှထွက်ခွါရန်နှိပ်ပါ။',
          'good_bye': "နှုတ်ဆက်ပါတယ်",
          'check_out_time': "အလုပ်မှထွက်ခွါချိန် ",
          'hour': "နာရီ",
          'minute': "မိနစ်",
          'warning_text':
              "သတိပေးချက်! နောက်ဆုံးအလုပ်လုပ်ချိန်သည် ၁၂ နာရီထက် ကျော်လွန်နေပါသည်။ဒီအရာဟာမှန်ကန်မှုမရှိဘူးဆိုရင် HR ကိုဆက်သွယ်နိုင်ပါသည်။"

          //leave

          ,
          'sort': "အထက်အောက်စီရန်",
          'filter': "ခွဲထုတ်ကြည့်ရန်",
          'leave_type': "ခွင့်ယူမည့် အမျိုးအစား",
          'date_range': "ရက်အပိုင်းအခြား",
          "select_date": "ရက်အပိုင်းအခြား  ရွေးရန်ဒီနေရာနှိပ်ပါ",
          'start_date': "စတင်ရက်",
          'end_date': "ပြီးဆုံးရက်",
          'duration': "ကာလ",
          'leave_day': "ခွင့်ယူမည့်ရက်အရေအတွက်",
          'description': "ဖော်ပြချက်",
          'confirm': "သေချာပါသည်",

          //setting
          'theme': "အပြင်အဆင်",
          'language': "ဘာသာစကား",
          'dark_mode': "အလင်း/အမှောင်",
          'logout': "အကောင့်မှထွက်ရန်",
          'about': "အကြောင်းအရာ",
          'general': "အထွေအထွေ"
        }
      };
}

final List locale = [
  {
    'name': "English",
    'locale': const Locale('en', 'English'),
  },
  {
    'name': "Myanmar",
    'locale': const Locale('my', 'Myanmar'),
  }
];
