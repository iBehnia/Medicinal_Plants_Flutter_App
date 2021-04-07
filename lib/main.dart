import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'GeneralWidgets/BottomNavigator.dart';
import 'Screens/HomePage/HomePage.dart';
import 'Screens/SplashScreen/SplashScreenPage.dart';
import 'package:pedantic/pedantic.dart';
import 'Themes/Theme.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.light,
      title: 'IranMedicalPlants',
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
