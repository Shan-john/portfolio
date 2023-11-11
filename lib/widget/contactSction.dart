import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:protfolio/core/commonFunc.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/core/function.dart';

class ContactSection extends StatelessWidget {
  ContactSection({super.key});
  @override
  Widget build(BuildContext context) {
   
    return Container(
     height: 180,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: HexColor("4934C1"), // color: Colors.amber,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        children: [
          customlabeltext("Contact", 25),
          Kheight(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           
            children: [
             // customlabeltext("Contact", 30),
              customimageButtom(
                appName: "Email",
                iconImage: emailImage,
                ontap: () => Launch.instance.launchEmail(),
              ),
              customimageButtom(
                appName: "LinkedIn",
                iconImage: linkedInImage,
                ontap: () => Launch.instance.launchLinkedInProfile(id:  linkedInfromfirebase, ),
              ),

             
               customimageButtom(
                appName: "WhatApp",
                iconImage: whatsAppImage,
                ontap: () => Launch.instance.launchWhatsapp(number: whatsappnumberfromfirebase, ),
              ),
              
                customimageButtom(
                appName: "Instagram",
                iconImage: instagramImage,
                ontap: () => Launch.instance.launchInstagram(instagramid: instagrammessageidfromfirebase),
              ),
              
            ],
          ),
        ],
      ),
    );
  }

  Text customlabeltext(String title, double size) =>
      Text(title, style: ktextstyleopenSans(fontsize: size));
  customimageButtom(
      {required String appName,
      required String iconImage,
      required Function() ontap}) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: 90,
        child: Column(
          children: [
            Container(
           
              width: 60,
              height: 60,
             
              decoration: ShapeDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    scale: 0.3,
                    image: NetworkImage(
                      iconImage,
                    )),
                color: HexColor("101630"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F3E355A),
                    blurRadius: 5,
                    offset: Offset(2, 2),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0xFF4F349B),
                    blurRadius: 5,
                    offset: Offset(-2, -2),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          //  const Gap(20),
            customlabeltext(appName, 17),
          ],
        ),
      ),
    );
  }
}
