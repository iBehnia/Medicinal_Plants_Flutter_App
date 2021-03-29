import 'package:flutter/material.dart';
import 'package:medical_plants/Screens/HomePage/Widgets/SearchBar.dart';

import 'package:get/get.dart';
import 'package:medical_plants/Screens/SplashScreen/SplashScreenPage.dart';

import '../HomePage/Widgets/NearestPlantsGridView.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Text(
              'نزدیک ترین گیاهان',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            NearestPlantsGridView(),
          ],
        ),
      ),
    ));
  }
}
