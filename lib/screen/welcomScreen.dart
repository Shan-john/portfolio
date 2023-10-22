import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/screen/mainScreen.dart';
import 'package:protfolio/service/Http%20service/Onwer_Api_Call.dart';
import 'package:protfolio/service/Http%20service/Project_ApiCall.dart';
import 'package:protfolio/service/firebase/fireBaseFirestoreHelper.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    getinformation();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Mainscreen(),
      ));
    });
    super.initState();
  }

  void getinformation() async {
    Userdata = await getOwnerInformation();
    listofExperience = await FirebasefirestoreHelper.instance.getExperience();
    listofSkill = await FirebasefirestoreHelper.instance.getSkills();
    await fetchGitHubProjects();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image(
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                    "https://i.pinimg.com/564x/33/46/74/33467414e8e293b6aae73dc98f2da65c.jpg")),
          ),
          Align(
            alignment: Alignment.center,
            child: CircularProgressIndicator(
              color: Colors.blue.withOpacity(0.5),
            ),
          )
        ],
      ),
    );
  }
}
