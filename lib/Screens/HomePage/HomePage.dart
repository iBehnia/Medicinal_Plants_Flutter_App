import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:medical_plants/GeneralWidgets/BottomNavigator.dart';
import 'package:medical_plants/Screens/HomePage/Widgets/SearchBar.dart';

import 'package:get/get.dart';
import 'package:medical_plants/Screens/SplashScreen/SplashScreenPage.dart';

import '../HomePage/Widgets/NearestPlantsGridView.dart';
import '../HomePage/Widgets/NearestObserversGridView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: Get.height / 15,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {},
                  ),
                  SearchBar(),
                ],
              ),
            ),
            txt('نزدیک ترین گیاهان'),
            NearestPlantsGridView(),
            txt('نزدیک ترین مشاهده کننده ها'),
            NearestObserversGridView(),
          ],
        ),
      ),
    ));
  }

  Widget txt(String str) {
    return Container(
      margin: EdgeInsets.only(right: 0, top: 10),
      child: Text(
        str,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
