import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/screen/mainScreen.dart';
import 'package:protfolio/service/Http%20service/Project_ApiCall.dart';

import 'package:protfolio/service/firebase/fireBaseFirestoreHelper.dart';

import '../service/Http service/Onwer_Api_Call.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    getinformation();
    Future.delayed(const Duration(seconds: 2), () {
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
    await FirebasefirestoreHelper.instance.getOwnerInformation().then((value) {
      setState(() {});
      return null;
    });

    await fetchGitHubProjects().then((value) {
      setState(() {});
      return null;
    });

    await FirebasefirestoreHelper.instance.getOwnerInformation();
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
                fit: BoxFit.fitHeight, image: NetworkImage(backgroundImage)),
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
