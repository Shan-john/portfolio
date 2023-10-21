import 'package:flutter/material.dart';

class MYskill extends StatelessWidget {
  const MYskill();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      height: hi.length * 20,
      child: GridView(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        children: hi.map((e) => e).toList(),
      ),
    );
  }
}

List<Widget> hi = [
  Text("data"),
  Text("data"),
  Text("data"),
  Text("data"),
  Text("data"),
  Text("data"),
  Text("data"),
  Text("data"),
  Text("data"),
  Text("data"),
  Text("data"),
  Text("data"),
];
