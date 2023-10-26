import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/core/commonFunc.dart';
import 'package:protfolio/core/constant.dart';

class ContactSection extends StatelessWidget {
 final TextEditingController messageController = TextEditingController();

  ContactSection({super.key});
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        color: Colors.amber,
        width: size.width,
        height: size.width / 3.1,
        child: Column(
          children: [
            Text(
              "Contact Me",
              style: ktextstyleopenSans(fontsize: size.width / 20),
            ),
            Kheight(),
            SizedBox(
              width: size.width-100,
              child: TextField(
                controller: messageController,
                autocorrect: true,
              decoration: const InputDecoration(
                
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(
                  50
                )),
                borderSide:BorderSide(width: 1),),
              
                hintText: "Message.."
              )
              ),
            ),
            
          ],
        ));
  }
}
