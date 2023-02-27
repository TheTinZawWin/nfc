// // ignore_for_file: import_of_legacy_library_into_null_safe, unused_import

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../constants.dart';
// import '../../../size_config.dart';

// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar(
//       {Key? key, required this.title, required this.showiconspecified})
//       : super(key: key);
//   final String title;
//   final String showiconspecified;
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//         backgroundColor: kPrimaryColor,
//         centerTitle: true,
//         title: Text(
//           title,
//           style: TextStyle(
//             fontSize: getProportionateScreenWidth(24),
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//           // textAlign: TextAlign.center,
//         ),
//         actions: <Widget>[
//           Visibility(
//             visible: showiconspecified == "attendence",
//             child: Padding(
//               padding: const EdgeInsets.only(right: 8.0),
//               child: GetBuilder<AttendenceViewModel>(
//                   builder: (controller) => controller.show_check_in
//                       ? IconButton(
//                           icon: Icon(
//                             Icons.login,
//                             // color: Color(0xFFF488FB1),
//                             size: getProportionateScreenHeight(30),
//                           ),
//                           onPressed: () {
//                             Get.to(const AttendenceProcess());
//                           },
//                         )
//                       : IconButton(
//                           icon: Icon(
//                             Icons.logout,
//                             color: Colors.red,
//                             size: getProportionateScreenHeight(30),
//                           ),
//                           onPressed: () {
//                             Get.to(const AttendenceProcess());
//                           },
//                         )),
//             ),
//           ),
//           Visibility(
//             visible: showiconspecified == "allocation",
//             child: Padding(
//               padding: const EdgeInsets.only(right: 8.0),
//               child: GetBuilder<AttendenceViewModel>(
//                   builder: (controller) => IconButton(
//                         icon: const Icon(
//                           Icons.work_off,
//                           color: kTextColor,
//                           size: 30,
//                         ),
//                         onPressed: () {
//                           Get.to(const AttendenceProcess());
//                         },
//                       )),
//             ),
//           ),
//         ]);
//   }
// }
