import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/models/experience_model/experience_model.dart';

import 'package:protfolio/models/skill_model/skill_model.dart';

class FirebasefirestoreHelper {
  static FirebasefirestoreHelper instance = FirebasefirestoreHelper();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<List<ExperienceModel>> getExperience() async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collection("experience ").get();

      List<ExperienceModel> listofexperience = querySnapshot.docs
          .map((e) => ExperienceModel.fromJson(e.data()))
          .toList();

      return listofexperience;
    } catch (e) {
      return [];
    }
  }

  Future<void> getOwnerInformation() async {
    try {
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection('myDetails')
          .doc('6ndPkZAIgpTSICS4HkFW')
          .get();

      whatsappnumberfromfirebase = documentSnapshot['phonenumber'];
      instagrammessageidfromfirebase = documentSnapshot['instagram'];
      linkedInfromfirebase = documentSnapshot['linkedIn'];
      aboutMe  = documentSnapshot['aboutMe'];
    } catch (e) {
      print(e);
    }
  }

  Future<List<SkillModel>> getSkills() async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collectionGroup("skill").get();

      List<SkillModel> listofSkill =
          querySnapshot.docs.map((e) => SkillModel.fromJson(e.data())).toList();

      return listofSkill;
    } catch (e) {
      return [];
    }
  }
}
