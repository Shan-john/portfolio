import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';

class Contact_Sedction extends StatelessWidget {
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.amber,
      width: size.width,
      height: size.width/3.1,
      child:Column(
        children: [
          Text("Contact Me",style: ktextstyleopenSans(fontsize: size.width/20),)
        ],
      )
    );
  }
}
