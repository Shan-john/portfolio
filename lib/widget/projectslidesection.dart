import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:protfolio/service/Http%20service/Onwer_Api_Call.dart';

import 'package:protfolio/core/constant.dart';
import 'package:protfolio/service/Http%20service/Project_ApiCall.dart';
import 'package:protfolio/core/function.dart';
import 'package:protfolio/screen/mainScreen.dart';

class ProjectScetion extends StatefulWidget {
  ProjectScetion({super.key});

  @override
  State<ProjectScetion> createState() => _ProjectScetionState();
}

class _ProjectScetionState extends State<ProjectScetion> {
      @override
  void initState() {
    getinformation();
    super.initState();
  }

  getinformation() async {
    Future.delayed(
      const Duration(seconds: 2),
      () async {
      // Userdata = await getOwnerInformation();
        setState(() {});
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width / 1.1,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "PROJECT",
              style: ktextstyleopenSans(fontsize: size.width / 21),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfProjects.length,
                itemBuilder: (context, index) {
                  final project = listOfProjects[index];
                  return _project_card(
                    name: project.name,
                    discription: project.description,
                    url: project.htmlUrl,
                    wedsite: project.homepage,
                    language: project.language,
                    visibility: project.visibility,
                    projectimage: projectimage[index % projectimage.length],
                  );
                }),
          )
        ],
      ),
    );
  }
}

class _project_card extends StatelessWidget {
  final String? name;
  final String? discription;
  final String? url;
  final String? wedsite;
  final String? language;
  final String? visibility;
  final String projectimage;
  _project_card({
    required this.name,
    required this.discription,
    super.key,
    required this.url,
    this.wedsite,
    required this.language,
    this.visibility,
    required this.projectimage,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 60,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: HexColor("101630"),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                offset: Offset(1, 1), blurRadius: 5, color: HexColor("3F355A")),
            BoxShadow(
                offset: const Offset(-1, -1),
                blurRadius: 5,
                color: HexColor("4F349B"))
          ]),
      child: Column(
        children: [
          Container(
            width: size.width - 60,
            height: size.width / 2.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage("${projectimage}")),
                borderRadius: BorderRadius.circular(40)),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              name!,
              style: ktextstyleopenSans(fontsize: size.width / 20),
            ),
          ),
          SizedBox(
            width: size.width - 70,
            height: size.width / 5.3,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  discription ?? "no discription",
                  style: ktextstyleopenSans(fontsize: size.width / 25),
                ),
              ),
            ),
          ),
          // Kheight(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              kwidht(size.width / 20),
              InkWell(
                onTap: () {
                  launchweb(url: url!);
                },
                child: Icon(
                  Icons.drive_file_move_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              wedsite != null
                  ? InkWell(
                      onTap: () {
                        launchweb(url: wedsite!);
                      },
                      child: Icon(
                        Icons.link,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  : SizedBox(),
              kwidht(size.width / 30),
              kwidht(size.width / 30),
              Text(
                "🔴 ${language ?? ""} , ${visibility?.toUpperCase()}",
                style: ktextstyleopenSans(fontsize: size.width / 25),
              ),
              kwidht(size.width / 30),
            ],
          ),
        ],
      ),
    );
  }
}
