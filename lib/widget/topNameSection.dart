import 'package:flutter/material.dart';
import 'package:protfolio/core/constant.dart';
import 'package:protfolio/core/function.dart';


class NameSection extends StatefulWidget {
  const NameSection({super.key});

  @override
  State<NameSection> createState() => _NameSectionState();
}

class _NameSectionState extends State<NameSection> {
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
                Launch.instance.launchweb(url: Userdata?.htmlUrl ?? "");
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
              child: 
                Userdata?.name != null ? Text(
                Userdata!.name.toString(),
                style: ktextstylelora(fontsize: size.width / 11),
              ): const Text("Loading")
              )
        ],
      ),
    );
  }
}
