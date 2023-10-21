import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';

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
              style: ktextstyleopenSans(fontsize: size.width / 30),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ExperienceCart(),
                ExperienceCart(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: size.width / 2.2,
          height: size.width / 2.2,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: NetworkImage("https://via.placeholder.com/337x337"),
              fit: BoxFit.fill,
            ),
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
        ),
        Center(
          child: SizedBox(
            height: size.width / 2.4,
            width: size.width / 2.2,
            child: Text(
              ktext,
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width / 30,
                fontFamily: 'Inder',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: 1.20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
