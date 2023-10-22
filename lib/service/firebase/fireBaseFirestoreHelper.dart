import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/models/experience_model/experience_model.dart';

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

 



    
      print("got it firebase ");
      return listofexperience;
    } catch (e) {
      print("error is this $e");
      return [];
    }
  }
}
