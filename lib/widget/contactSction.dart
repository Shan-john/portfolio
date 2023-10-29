import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/core/commonFunc.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/core/function.dart';

class ContactSection extends StatelessWidget {
  
  const ContactSection({super.key});
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController messageController = TextEditingController();
 final TextEditingController emailController = TextEditingController();
    return Container(
      color: Colors.purple,
      child: Column(
        children: [
          Kheight(),
          Text(
            "Contact Me",
            style: ktextstyleopenSans(fontsize: size.width / 20),
          ), 
          textfeild(size,emailController,"email"),
          Kheight(),
          textfeild(size,messageController,"Message"),
          Kheight(),
          TextButton.icon(
            onPressed: () {
              if (messageController.text.isNotEmpty && emailController.text.isNotEmpty) {
                 Launch.instance.launchEmail();
              }
             
            },
            icon: Icon(Icons.send),
            label: Text("Sent"),
            style: ButtonStyle(
              
              shape: MaterialStateProperty.all(BeveledRectangleBorder()),
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 44, 7, 255)),
            ),
          ),
          Kheight(),
          
        ],
      
      ),
    );
  }

  SizedBox textfeild(Size size,TextEditingController messageController,String hint ) {
    return SizedBox(
            width: size.width - 100,
            child: TextField(
                controller: messageController,
                autocorrect: true,
                
                decoration:  InputDecoration(
               
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:const Color.fromARGB(151, 0, 0, 0) ,), borderRadius: BorderRadius.all(Radius.circular(50)),),
                 
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(width: 1),
                    ),
                    hintText: hint)),
          );
  }
}
