import 'dart:core';

import 'package:flutter/material.dart';

import 'package:protfolio/models/experience_model/experience_model.dart';

import 'package:protfolio/models/project_model/project_model.dart';
import 'package:protfolio/models/skill_model/skill_model.dart';
import 'package:protfolio/models/user_model/user_model.dart';

import 'package:google_fonts/google_fonts.dart';

ktextstylelora({required double fontsize}) =>
    GoogleFonts.lora(color: Colors.white, fontSize: fontsize);
ktextstyleopenSans({required double fontsize}) =>
    GoogleFonts.openSans(color: Colors.white, fontSize: fontsize);


List<ProjectModel> listOfProjects = [];
List<ExperienceModel> listofExperience = [];
List<SkillModel> listofSkill = [];
UserModel? Userdata = UserModel();
List<String> projectimage = [
  "https://i.pinimg.com/564x/d6/19/a6/d619a64645bf2cbf8f32f9063cf29ac5.jpg",
  "https://i.pinimg.com/564x/47/66/39/476639214be4ad45e983109cdfa2c6ab.jpg",
  "https://i.pinimg.com/564x/f7/26/62/f72662c9ccf1c7d437827a374cb8d38e.jpg",
  "https://i.pinimg.com/564x/4b/10/b7/4b10b73b24c14c78f9c30f37bedfd742.jpg",
  "https://i.pinimg.com/736x/40/bf/50/40bf5022f099e7030c11e17e50f4b3da.jpg",
  "https://i.pinimg.com/564x/90/44/a6/9044a634e09b2a633ff73efad0fdf470.jpg",
];
String backgroundiamge =   "https://i.pinimg.com/564x/33/46/74/33467414e8e293b6aae73dc98f2da65c.jpg";

