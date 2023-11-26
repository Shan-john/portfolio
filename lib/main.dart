import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:protfolio/screen/Responxive_layout_Error.dart';

import 'package:flutter/services.dart';
import 'package:protfolio/screen/responsive_Layout.dart';
import 'package:protfolio/screen/welcomScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          // apiKey: "AIzaSyDnZZN4ia94hgY3O6GJvUrd8Rer5YySNvE",
          apiKey: "AIzaSyDbxICtK6YEgICH3oxQg5uIlxHoUkftkfU",
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
      theme: ThemeData(),
      home: Responsive_Layout(
        DesktopBody: Responsive_Layout_Error_Screen(),
        MobielBody: WelcomeScreen(),
      ),
    );
  }
}
// commit