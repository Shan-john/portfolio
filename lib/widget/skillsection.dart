import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/models/skill_model/skill_model.dart';
import 'package:protfolio/core/commonFunc.dart';
class MYskill extends StatelessWidget {
  const MYskill();

  @override
  Widget build(BuildContext context) {
    listofSkill.shuffle();
    return Container(
      margin: EdgeInsets.all(30),
      height: 220,
      child: GridView.builder(
        itemCount: listofSkill.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          final skill = listofSkill[index];

          return Container(
         
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(skill.image ?? "")),
               
                Text(
                  skill.name ?? "",
                  style: ktextstyleopenSans(fontsize: 14),
                ),
                Kheight(),
              ],
            ),
          );
        },
      ),
    );
  }
}

// List<Widget> hi = [
//   Text("data"),
//   Text("data"),
//   Text("data"),
//   Text("data"),
//   Text("data"),
//   Text("data"),
//   Text("data"),
//   Text("data"),
//   Text("data"),
//   Text("data"),
//   Text("data"),
//   Text("data"),
// ];
