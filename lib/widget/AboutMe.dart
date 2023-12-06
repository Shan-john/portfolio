import 'package:flutter/material.dart';
import 'package:protfolio/core/commonFunc.dart';
import 'package:protfolio/core/constant.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({super.key});

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection> {
  @override
  void initState() {
    getinformation();
    super.initState();
  }

  getinformation() async {
    int i = 0;
    while (i < 3) {
      Future.delayed(
        const Duration(seconds: 2),
        () async {
          setState(() {});
        },
      );
      i++;
    }
  }

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
