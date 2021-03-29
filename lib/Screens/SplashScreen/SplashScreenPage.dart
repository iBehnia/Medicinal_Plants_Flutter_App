import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/HomePage/HomePage.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _handelSplash();
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
      ),
    );
  }

  Future _handelSplash() async {
    await Future.delayed(Duration(seconds: 2))
        .then((value) => Get.off(HomePage()));
  }
}
