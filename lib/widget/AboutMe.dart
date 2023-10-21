import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/screen/mainScreen.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({super.key});

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection> {
  @override
  void initState() {
    setState(() {});
    Future.delayed(
      const Duration(seconds: 2),
      () async {
       
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // height: size.width / 2,
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
            Userdata?.bio.toString() ?? "",
            style: ktextstyleopenSans(fontsize: size.width / 27),
          )
        ]),
      ),
    );
  }
}
