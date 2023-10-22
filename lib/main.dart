import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:protfolio/screen/Responxive_layout_Error.dart';
import 'package:protfolio/screen/mainScreen.dart';
import 'package:flutter/services.dart';
import 'package:protfolio/screen/responsive_Layout.dart';
import 'package:protfolio/screen/welcomScreen.dart';
import 'package:protfolio/service/Http%20service/Project_ApiCall.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDnZZN4ia94hgY3O6GJvUrd8Rer5YySNvE",
          appId: "1:383938854377:web:37d2aea58c492cf3101f78",
          messagingSenderId: "",
          projectId: "personalprotfolio-419e4"));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Allow only portrait orientation
  ]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PROTFOLIO',
      theme: ThemeData(scaffoldBackgroundColor: HexColor("101630")),
      home: Responsive_Layout(
        DesktopBody: Responsive_Layout_Error_Screen(),
        MobielBody: WelcomeScreen(),
      ),
    );
  }
}
