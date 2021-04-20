import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:medical_plants/Screens/HomePage/Widgets/BestObserversGridView.dart';
import 'package:medical_plants/Screens/HomePage/Widgets/SearchBar.dart';

import 'package:get/get.dart';
import 'package:medical_plants/Screens/LoginRegister/LogInOutPageTabBar.dart';

import '../../GeneralWidgets/PlantsGridView.dart';
import '../HomePage/Widgets/NearestObserversGridView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Get.height / 15,
                child: Row(
                  children: [
                    SearchBar(),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        Get.to(LogInOutPgeTabBar());
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: txt('نزدیک ترین گیاهان'),
              ),
              PlantsGridView(
                direction: Axis.horizontal,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: txt('نزدیک ترین مشاهده کننده ها'),
              ),
              NearestObserversGridView(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: txt('بهترین مشاهده کننده ها'),
              ),
              BestObserversGridView(),
              SizedBox(
                height: Get.height / 30,
              )
            ],
          ),
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
