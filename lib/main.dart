import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/HomePage/HomePage.dart';
import 'package:medical_plants/Screens/SplashScreen/SplashScreenPage.dart';
import 'package:pedantic/pedantic.dart';
import 'Themes/Theme.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IranMedicalPlants',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      home: HomePage(),
    );
  }
}
