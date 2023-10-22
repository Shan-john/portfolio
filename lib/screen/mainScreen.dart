import 'package:flutter/material.dart';
import 'package:protfolio/service/Http%20service/Onwer_Api_Call.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/service/Http%20service/Project_ApiCall.dart';
import 'package:protfolio/models/user_model/user_model.dart';
import 'package:protfolio/service/firebase/fireBaseFirestoreHelper.dart';
import 'package:protfolio/widget/AboutMe.dart';
import 'package:protfolio/widget/experiencesectio.dart';
import 'package:protfolio/widget/projectslidesection.dart';
import 'package:protfolio/widget/skillsection.dart';
import 'package:protfolio/widget/topNameSection.dart';

class Mainscreen extends StatefulWidget {
  Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  void initState() {
    getinforamtion();
    super.initState();
  }

  void getinforamtion() async {
    listofExperience = await FirebasefirestoreHelper.instance.getExperience();
    listofSkill = await FirebasefirestoreHelper.instance.getSkills();
    await fetchGitHubProjects();

    Userdata = await getOwnerInformation();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          NameSection(),
          Kheight(),
          AboutMeSection(),
          Kheight(),
         
          Center(
                child: Text(
              "PORTFOLIO",
              style: ktextstyleopenSans(fontsize: size.width / 20),
                ),
                ),
      
          Kheight(),
          ProjectScetion(),
          Kheight(),
          ExperienceSection(),
          Kheight(),
           Center(
                child: Text(
              "Skills",
              style: ktextstyleopenSans(fontsize: size.width / 20),
            ),
          ),
          MYskill(),
        ],
      ),
    );
  }
}
