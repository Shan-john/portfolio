import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:protfolio/core/constant.dart';

import 'package:protfolio/widget/AboutMe.dart';
import 'package:protfolio/widget/contactSction.dart';
import 'package:protfolio/widget/experiencesectio.dart';
import 'package:protfolio/widget/projectslidesection.dart';
import 'package:protfolio/widget/skillsection.dart';
import 'package:protfolio/widget/topNameSection.dart';


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
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: HexColor("101630"),
        body:
            //Userdata!.name!=null&& Userdata!.bio != null?
            Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                
                  fit: BoxFit.cover, image: NetworkImage(backgroundImage))),
          child: ListView(
            children: [
           const   NameSection(),
           
             const AboutMeSection(),
            const   Gap(250),
            
              Center(
                child: titlenameText(size, "PORTFOLIO"),
              ),
                
              ProjectScetion(),
           const  Gap(150),
            const  ExperienceSection(),
            const   Gap(200),
              Center(
                child: titlenameText(size, "SKILLS"),
              ),
            const  MYskill(),
            const   Gap(250),
              ContactSection(),
            ],
          ),
        )
        //:WelcomeScreen()
        );
  }
}
