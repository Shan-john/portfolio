// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:protfolio/core/constant.dart';
// import 'package:protfolio/core/function.dart';
// import 'package:url_launcher/url_launcher.dart';

// class PopUP extends StatelessWidget {
//   final String title;
//   final String appname;
//   final Function ontap;
//   PopUP({super.key, required this.title, required this.appname, required this.ontap});
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//         backgroundColor: HexColor("#242628"),
//         title: Center(
//           child: Text(
//             title,
//             style: const TextStyle(
//                 fontSize: 26,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(153, 255, 255, 255)),
//           ),
//         ),
//         content: Container(
//           height: 180,
//           width: 30,
//           // color:  HexColor("#242628"),
//           child: Column(
//             children: [
//               ListTile(
//                 leading:
//                     CircleAvatar(backgroundImage: NetworkImage(whatsAppImage)),
//                 title: Text(appname),
//                 onTap: ontap(),
//               )
//             ],
//           ),
//         ));
//   }
// }

// showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return myDrawer();
//                 });
