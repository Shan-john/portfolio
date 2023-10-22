import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/core/function.dart';
import 'package:protfolio/models/user_model/user_model.dart';

import 'package:url_launcher/url_launcher.dart';

class NameSection extends StatelessWidget {
  const NameSection({super.key});


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 2,
      width: size.width / 2,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          scale: 10,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2), BlendMode.dstATop),
          image: NetworkImage(
            scale: 10,
            "https://i.pinimg.com/564x/05/f1/71/05f17118cabf58bab20fae78b39add67.jpg",
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            right: 20,
            child: InkWell(
              onTap: () {
                launchweb(url: Userdata?.htmlUrl ?? "");
              },
              child: CircleAvatar(
                radius: 23,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage("${Userdata?.avatarUrl}"),
              ),
            ),
          ),
          Positioned(
              top: size.width / 6,
              left: size.width / 15,
              child: Text(
                Userdata?.name.toString() != null ? "I'am " : " ",
                style: ktextstylelora(fontsize: size.width / 11),
              )),
          Positioned(
              top: size.width / 3.6,
              left: size.width / 10,
              child: Text(
                Userdata?.name.toString() ?? "",
                style: ktextstylelora(fontsize: size.width / 11),
              ))
        ],
      ),
    );
  }
}
