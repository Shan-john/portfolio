import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;
import 'package:protfolio/project_model/project_model.dart';

List<ProjectModel> listOfProjects = [];

final String githubApiUrl = 'https://api.github.com/users/Shan-john/repos';

Future<bool> fetchGitHubProjects() async {
  try {
    final response = await http.get(Uri.parse(githubApiUrl));
    final jsonbody = jsonDecode(response.body) as List<dynamic>;
    listOfProjects = [];
    for (var element in jsonbody) {
      listOfProjects.add(ProjectModel.fromJson(element));
    }

    for (var e in listOfProjects) {
      print(e.name);
    }
    return true;
  } catch (e) {
    print("nadanilla");
    return false;
  }
}



// List<ProjectModel> parseGitHubRepositories(List<Map<String, dynamic>> data) {
//   List<ProjectModel> repositories = [];
//   for (var projectData in data) {
//     repositories.add(ProjectModel.fromJson(projectData));
//   }
//   return repositories;
// }

// // Parse the API data into GitHubRepository objects
// List<GitHubRepository> projectList = parseGitHubRepositories(apiData);
