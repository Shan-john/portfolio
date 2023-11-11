import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:protfolio/core/api.dart';
import 'package:protfolio/models/user_model/user_model.dart';

Future<UserModel> getOwnerInformation() async {
  final responce = await http.get(Uri.parse(onwerApiUrl));
  final jsonbody = jsonDecode(responce.body) as Map<String, dynamic>;
  final data = UserModel.fromJson(jsonbody);
  return data;
}
