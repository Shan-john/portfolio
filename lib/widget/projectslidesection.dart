import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:protfolio/core/commonFunc.dart';
import 'package:protfolio/core/constant.dart';

import 'package:protfolio/core/function.dart';

class ProjectScetion extends StatelessWidget {
  ProjectScetion({super.key});

  @override
  // void initState() {
  //   getinformation();
  //   super.initState();
  // }

  // getinformation() async {
  //   Future.delayed(
  //     const Duration(seconds: 2),
  //     () async {
  //       setState(() {});
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width / 1.1,
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
                //    primary: false ,
                // physics: NeverScrollableScrollPhysics(),
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
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Launch.instance.launchweb(url: url!);
              },
              child: Container(
                width: size.width - 60,
                height: size.width / 2.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("${projectimage}")),
                    borderRadius: BorderRadius.circular(40)),
              ),
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
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              wedsite != null
                  ? InkWell(
                      onTap: () {
                        Launch.instance.launchweb(url: wedsite!);
                      },
                      child: Icon(
                        Icons.link,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  : SizedBox(),
              kwidht(size.width / 30),
              Text(
                "🔴 ${language ?? ""} , ${visibility?.toUpperCase()}",
                style: ktextstyleopenSans(fontsize: size.width / 25),
              ),
            ]),
          ],
        ));
  }
}
