import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/service/firebase/fireBaseFirestoreHelper.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width / 1.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Experience",
              style: ktextstyleopenSans(fontsize: size.width / 21),
            ),
          ),
          Kheight(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              itemCount: listofExperience.length,
              itemBuilder: (context, index) {
                final experience = listofExperience[index];
                return ExperienceCard(
                  title: experience.name??"",
                  Discription: experience.description??"",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String title;
  final String Discription;
  ExperienceCard({required this.title, required this.Discription});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width-80,
      padding: EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color:  HexColor("101630"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F3E355A),
                blurRadius: 5,
                offset: Offset(2, 2),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0xFF4F349B),
                blurRadius: 5,
                offset: Offset(-2, -2),
                spreadRadius: 0,
              )
            ],
          ),
      child: Row(
        children: [
        
          SizedBox(
            height: size.width / 2.4,
             width: size.width -130 ,
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width / 20 ,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400, 
                
                    letterSpacing: 1.20,
                  ),
                ),
                Spacer(),
               // Kheight(),
                  Text(
                  Discription,
                  style: TextStyle (
              
                    color: Colors.white,
                    fontSize: size.width / 30,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                   // height: 0,
                    letterSpacing: 1.20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
