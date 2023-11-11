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
Text titlenameText(Size size, String title) {
  return Text(
    title,
    style: TextStyle(
      decoration: TextDecoration.underline,
      color: Colors.white,
      fontSize: 23,
    ),
    //  style: TextStyle(),
  );
}

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
String backgroundImage =
    "https://i.pinimg.com/564x/33/46/74/33467414e8e293b6aae73dc98f2da65c.jpg";
String emailImage =
    "https://imgs.search.brave.com/lYV0sA4Bv3Az9qQRj6g5XDprojE3G4YdFxIdL9IRN9U/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/aWNvbnNjb3V0LmNv/bS9pY29uL2ZyZWUv/cG5nLTI1Ni9mcmVl/LWdtYWlsLTI5MjM2/NTctMjQxNjY2MC5w/bmc_Zj13ZWJwJnc9/MTI4";
String instagramImage =
    "https://imgs.search.brave.com/iJrkEfsQTRVgNwbJ1qS2UGXehMKzMEwqz4Qsgn-gd3E/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/cG5nYWxsLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvNS9JbnN0/YWdyYW0tTG9nby1Q/TkctRnJlZS1Eb3du/bG9hZC5wbmc";
String whatsAppImage =
    "https://imgs.search.brave.com/8QoD0teS1jXsP_Y3h-GbSrbkMLoCk_Ape8VRQ2Ds6Ts/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG40/Lmljb25maW5kZXIu/Y29tL2RhdGEvaWNv/bnMvc29jaWFsLW1l/ZGlhLTIyMTAvMjQv/V2hhdHNhcHAtNjQu/cG5n";
String linkedInImage =
    "https://imgs.search.brave.com/0qtG7pj_TIbAltvyxuKjMZeSEeob_7Izx79mUYoE68s/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4z/Lmljb25maW5kZXIu/Y29tL2RhdGEvaWNv/bnMvc29jaW9jb25z/LzI1Ni9saW5rZWRp/bi1zb2Npb2Nvbi5w/bmc";
String whatsappnumberfromfirebase = "";
String instagrammessageidfromfirebase = "";

String linkedInfromfirebase = "";
