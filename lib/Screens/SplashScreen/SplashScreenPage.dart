import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/OnbordingPages/Widgets/OnBoardingPages.dart';
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
              height: Get.height / 4.5,
            ),
            SizedBox(
              height: Get.height / 30,
            ),
            Text(
              'دای مپ (DI Map)',
              style: TextStyle(
                // fontWeight: FontWeight.w300,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kButtonColor,
              ),
            ),
            FittedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Text(
                  ' Plant Medical Iranian of Distribution',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kButtonColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _handelSplash() async {
    await Future.delayed(Duration(seconds: 2))
        .then((value) => Get.off(() => OnBoardingPage()));
  }
}
