import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;

import 'package:protfolio/core/api.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/models/project_model/project_model.dart';

Future<bool> fetchGitHubProjects() async {
  try {
    final response = await http.get(Uri.parse(githubApiUrl));
    final jsonbody = jsonDecode(response.body) as List<dynamic>;
    listOfProjects = [];

    jsonbody.map((e) => listOfProjects.add(ProjectModel.fromJson(e))).toList();
    return true;
  } catch (e) {
    return false;
  }
}
