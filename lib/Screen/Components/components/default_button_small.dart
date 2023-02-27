// import 'package:flutter/material.dart';

// import '../constants.dart';
// import '../size_config.dart';

// class DefaultButtonSmall extends StatelessWidget {
//   const DefaultButtonSmall({
//     Key? key,
//     this.text,
//     required this.press,
//     required this.color,
//   }) : super(key: key);
//   final String? text;
//   final VoidCallback press;
//   final Color color;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: getProportionateScreenWidth(120),
//       height: getProportionateScreenHeight(40),
//       child: TextButton(
//         style: TextButton.styleFrom(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//           primary: Colors.white,
//           backgroundColor: color.withOpacity(0.8),
//         ),
//         onPressed: press,
//         child: Text(
//           text!,
//           style: TextStyle(
//             fontSize: getProportionateScreenWidth(18),
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
