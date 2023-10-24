import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';

class Responsive_Layout_Error_Screen extends StatelessWidget {
  const Responsive_Layout_Error_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(backgroundiamge))),
   
        child: Center(
          child: Text(
            "Turn off \"Desktop veiw\"and switch to \"normal view\"",
            style: ktextstyleopenSans(fontsize: 30),
          ),
        ),
      ),
    );
  }
}
