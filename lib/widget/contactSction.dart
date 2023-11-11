import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

import 'package:protfolio/core/commonFunc.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/core/function.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   
    return Column(
     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Kheight(),
        Text(
          "Contact Me",
          style: ktextstyleopenSans(fontsize: size.width / 20),
        ),
        Kheight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.email,
              size: size.width / 20,
              color: Colors.red[400],
            ),
        Icon(FontAwesome.whatsapp, size: size.width / 20, color: Colors.green[400],),
            Icon(FontAwesome.github_squared, size: size.width / 20, color: Color.fromARGB(255, 255, 255, 255),)
          ],
        ),
      ],
    );
  }
}
