import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/service/apicall.dart';
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
    
    
      getproject();
    super.initState();
  }

  void getproject() async {
    bool isready = false;
   print("object");
   fetchGitHubProjects();
    
    if (isready == true) {
      setState(() {

      });
    }
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
          InkWell(
            onTap: () {
              fetchGitHubProjects();
            
           
            },
            child: Center(
                child: Text(
              "PORTFOLIA",
              style: ktextstyleopenSans(fontsize: size.width / 20),
            )),
          ),
          Kheight(),
          ProjectScetion(),
          Kheight(),
          ExperienceSection(),
          Kheight(),
          MYskill()
        ],
      ),
    );
  }
}
