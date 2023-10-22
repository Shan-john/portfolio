import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/models/skill_model/skill_model.dart';

class MYskill extends StatelessWidget {
  const MYskill();
  @override
  Widget build(BuildContext context) {
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
            margin: EdgeInsets.symmetric(vertical: 0),
            height: 70,
            child: Column(
             
              children: [
                Container(
             
                height: 50,
                width: 50,
                child: Image.network(skill.image??"")),
                Kheight(),
              Text(skill.name ?? "",style: ktextstyleopenSans(fontsize: 18),),
            
          
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
