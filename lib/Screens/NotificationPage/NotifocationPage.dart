import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/NotificationPage/Widgets/JoinRequestTab.dart';
import 'package:medical_plants/Screens/NotificationPage/Widgets/NotifTab.dart';
import 'package:medical_plants/Themes/MyColors.dart';

TabController _tabController;

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SafeArea(
            child: MyTabBar(),
          ),
        ));
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
                child: Text('درخواست های همراهی'),
              ),
              Tab(
                child: Text('اعلان ها'),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: Get.height * 0.84,
              width: Get.width,
              child: TabBarView(children: [
                JoinRequestTab(),
                NotifTab(),
              ]),
            ),
          ),
        ),
      ],
    ),
  );
}
