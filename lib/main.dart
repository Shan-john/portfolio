import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:protfolio/screen/mainScreen.dart';
import 'package:flutter/services.dart';
import 'package:protfolio/Http%20service/Project_ApiCall.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Allow only portrait orientation
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PROTFOLIO',
      theme: ThemeData(scaffoldBackgroundColor: HexColor("101630")),
      home: Mainscreen(),
    );
  }
}
