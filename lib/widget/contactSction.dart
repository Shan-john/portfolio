import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:protfolio/core/commonFunc.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/core/function.dart';



class ContactSection extends StatelessWidget { 
    
  ContactSection({super.key});
  @override
 
  Widget build(BuildContext context) {
      TextEditingController subjectcontroller =  TextEditingController();
       TextEditingController composecontroller =  TextEditingController();

    return  SingleChildScrollView(
      child: Container(
        height: 500,
            padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            //color: HexColor("4934C1"),
            color: Colors.amber,
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
                 label:Text('Sent',style: TextStyle(color:  Color.fromARGB(255, 255, 255, 255),),) ,
                 icon: const Icon(Icons.send,color: Color.fromARGB(255, 255, 255, 255),),
                  onPressed: () {
                  Launch.instance.launchEmail(body: composecontroller.text,yourSubject: subjectcontroller.text);
                  },
                 
                ),
                Kheight()
              ],
            ),
       
       
      ),
    );
  }
}