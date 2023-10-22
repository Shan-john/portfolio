import 'package:flutter/material.dart';

import 'package:protfolio/core/constant.dart';

import 'package:protfolio/models/user_model/user_model.dart';
import 'package:protfolio/service/firebase/fireBaseFirestoreHelper.dart';
import 'package:protfolio/service/http_Api_Call/Onwer_Api_Call.dart';
import 'package:protfolio/service/http_Api_Call/Project_ApiCall.dart';
import 'package:protfolio/widget/AboutMe.dart';
import 'package:protfolio/widget/experiencesectio.dart';
import 'package:protfolio/widget/projectslidesection.dart';
import 'package:protfolio/widget/skillsection.dart';
import 'package:protfolio/widget/topNameSection.dart';

class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});

 
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
