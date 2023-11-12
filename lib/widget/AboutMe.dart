import 'package:flutter/material.dart';
import 'package:protfolio/core/commonFunc.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/screen/mainScreen.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  // void initState() {
  //   getinformation();
  //   super.initState();
  // }

  // getinformation() async {
  //   Future.delayed(
  //     const Duration(seconds: 2),
  //     () async {
  //       //  Userdata = await getOwnerInformation();
  //       setState(() {});
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "ABOUT",
            style: ktextstyleopenSans(fontsize: size.width / 20),
          ),
          Kheight(),
          Text(
           aboutMe,
            style: ktextstyleopenSans(fontsize: size.width / 27),
          )
        ]),
      ),
    );
  }
}
