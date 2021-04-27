import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/UserProfile/Widget/FolowersTab.dart';
import 'package:medical_plants/Screens/UserProfile/Widget/FolowingTab.dart';
import 'package:medical_plants/Themes/MyColors.dart';

TabController _tabController;

class FolowIngErsListTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: MyTabBar(),
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
                child: Text('دنبال شوندگان'),
              ),
              Tab(
                child: Text('دنبال کننده ها'),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: Get.height,
              width: Get.width,
              child: TabBarView(children: [
                FolowingTab(),
                FolowersTab(),
              ]),
            ),
          ),
        ),
      ],
    ),
  );
}
