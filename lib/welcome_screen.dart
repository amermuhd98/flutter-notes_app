// // import 'package:class_app/skip.dart';
// import 'package:floating/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import 'Cunst.dart';

// class Welcome extends StatelessWidget {
//   Welcome({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 CustomTextTitel(
//                   text: "Welcome To Notes App",
//                 ),
//                 const SizedBox(
//                   height: 60,
//                 ),
//                 SvgPicture.asset(
//                   "icons/chat.svg",
//                   height: 280,
//                   width: 280,
//                   fit: BoxFit.cover,
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 MaterialButton(
//                   height: 50,
//                   minWidth: 250,
//                   elevation: 10,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(18.0),
//                   ),
//                   color: const Color(0xFF55287E),
//                   onPressed: () {
//                     Navigator.pushReplacement(context,
//                         MaterialPageRoute(builder: (context) => HomePage()));
//                   },
//                   child: const Text(
//                     "Click Here",
//                     style: TextStyle(
//                       fontFamily: "Courgette",
//                       color: Colors.white,
//                       fontSize: 25,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 // MaterialButton(
//                 //   height: 50,
//                 //   minWidth: 250,
//                 //   elevation: 10,
//                 //   shape: RoundedRectangleBorder(
//                 //     borderRadius: BorderRadius.circular(18.0),
//                 //   ),
//                 //   color: const Color(0xFFF0E6FF),
//                 //   onPressed: () {},
//                 //   child: const Text(
//                 //     "تخطي",
//                 //     style: TextStyle(
//                 //       fontFamily: "Courgette",
//                 //       color: Color(0xFF55287E),
//                 //       fontSize: 25,
//                 //     ),
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   xx({required String text, required MaterialColor color}) {}
// }
