import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:protfolio/core/commonFunc.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/core/function.dart';

// class ContactSection extends StatelessWidget {
//   const ContactSection({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Column(
//      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Kheight(),
//         Text(
//           "Contact Me",
//           style: ktextstyleopenSans(fontsize: size.width / 20),
//         ),
//         Kheight(),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Icon(
//               Icons.email,
//               size: size.width / 20,
//               color: Colors.red[400],
//             ),
//         Icon(FontAwesome.whatsapp, size: size.width / 20, color: Colors.green[400],),
//             Icon(FontAwesome.github_squared, size: size.width / 20, color: Color.fromARGB(255, 255, 255, 255),)
//           ],
//         ),
//       ],
//     );
//   }
// }

// class ContactSection extends StatelessWidget {
//   const ContactSection({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Container(
//       height: 60,
//       color: Colors.red,
//       child: Column(
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: CupertinoTextField(autocorrect: true,controller: ),
//             )
             
//           ]),
//     );
//   }
// }

class ContactSection extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    TextEditingController subjectcontroller =  TextEditingController();
       TextEditingController composecontroller =  TextEditingController();
    return  Container(
          padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(color: HexColor("4934C1"),
           borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) )
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
            "Contact",
              style: ktextstyleopenSans(fontsize: 25)
         
          ),
          Kheight(),
              CupertinoTextField(
                controller: subjectcontroller,
                placeholder: 'Subject',
                style: TextStyle(color: CupertinoColors.white),
                placeholderStyle: TextStyle(color: CupertinoColors.inactiveGray),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: CupertinoColors.black,
                ),
              ),
Kheight(),
              CupertinoTextField(
                controller: composecontroller,
                placeholder: 'Compose Email',
                style: TextStyle(color: CupertinoColors.white),
                placeholderStyle: TextStyle(color: CupertinoColors.inactiveGray),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: CupertinoColors.black,
                ),
              ),
              Kheight(),
              TextButton.icon(
               label:Text('Sent') ,
               icon: Icon(Icons.send),
                onPressed: () {
                Launch.instance.launchEmail(body: composecontroller.text,yourSubject: subjectcontroller.text);
                },
               
              ),
              Kheight()
            ],
          ),
     
     
    );
  }
}