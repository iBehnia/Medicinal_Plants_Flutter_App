import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/GeneralWidgets/BottomNavigator.dart';
import 'package:medical_plants/Screens/HomePage/HomePage.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _handelSplash();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'Assets/Images/Logo.png',
              height: Get.height / 4,
            ),
            SizedBox(
              height: Get.height / 30,
            ),
            FittedBox(
              child: Text(
                'سامانه شناسایی مکان\n گیاهان دارویی',
                style: TextStyle(
                  // fontWeight: FontWeight.w300,
                  fontSize: 30,
                  color: kButtonColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _handelSplash() async {
    await Future.delayed(Duration(seconds: 2))
        .then((value) => Get.off(() => MyBottomNavigator()));
  }
}
