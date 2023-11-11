import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:protfolio/core/commonFunc.dart';
import 'package:protfolio/service/Http%20service/Onwer_Api_Call.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/service/Http%20service/Project_ApiCall.dart';
import 'package:protfolio/service/firebase/fireBaseFirestoreHelper.dart';
import 'package:protfolio/widget/AboutMe.dart';
import 'package:protfolio/widget/contactSction.dart';
import 'package:protfolio/widget/experiencesectio.dart';
import 'package:protfolio/widget/projectslidesection.dart';
import 'package:protfolio/widget/skillsection.dart';
import 'package:protfolio/widget/topNameSection.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});
  
  @override
  // void initState() {
  //   getinforamtion();
  //   super.initState();
  // }

  // void getinforamtion() async {
  //   listofExperience = await FirebasefirestoreHelper.instance.getExperience();
  //   listofSkill = await FirebasefirestoreHelper.instance.getSkills();
  //   await fetchGitHubProjects();

  //   Userdata = await getOwnerInformation();

  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
  final   size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("101630"),
        body:
            //Userdata!.name!=null&& Userdata!.bio != null?
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(backgroundiamge))),
                child: ListView(
                  children: [
                    NameSection(),
                    Kheight(),
                    AboutMeSection(),
                    // Kheight(),
                    sectionSpace(),
                    Center(
            child: titlenameText(size,"PORTFOLIO"),
                    ),
                    Kheight(),
                    ProjectScetion(),
                    sectionSpace(),
                    ExperienceSection(),
                    Kheight(),
                    Center(
            child: titlenameText(size,"SKILLS"),
                    ),
                    MYskill(),
                    ContactSection(),
                  ],
                ),
              )
        //:WelcomeScreen()
        );
  }
}
