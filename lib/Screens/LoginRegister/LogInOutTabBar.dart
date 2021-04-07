import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_plants/GeneralWidgets/InputTxt.dart';
import 'package:medical_plants/Screens/LoginRegister/Widgets/Register.dart';
import 'package:medical_plants/Themes/MyColors.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Themes/Theme.dart';

import 'Widgets/Login.dart';

TabController _tabController;

class LogInOutTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height / 20,
            ),
            Image.asset(
              'Assets/Images/Logo.png',
              height: Get.height / 9,
            ),
            SizedBox(
              height: Get.height / 20,
            ),
            Expanded(child: MyTabBar()),
          ],
        ),
      ),
    );
  }
}

Widget MyTabBar() {
  return DefaultTabController(
    length: 2,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: TabBar(
            unselectedLabelColor: kUnSelectedColor,
            indicatorColor: kActiveColor,
            automaticIndicatorColorAdjustment: true,
            indicatorSize: TabBarIndicatorSize.tab,
            controller: _tabController,
            tabs: [
              Tab(
                child: Text('ثبت نام'),
              ),
              Tab(
                child: Text('ورود'),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: Get.height * 0.75,
              width: Get.width,
              margin: EdgeInsets.only(
                top: 0,
                left: 20,
                right: 20,
              ),
              child: TabBarView(children: [
                Register(),
                Login(),
              ]),
            ),
          ),
        ),
      ],
    ),
  );
}
