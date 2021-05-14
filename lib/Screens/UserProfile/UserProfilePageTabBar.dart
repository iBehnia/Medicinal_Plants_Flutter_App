import 'package:flutter/material.dart';
import 'package:medical_plants/GeneralWidgets/PlantsGridView.dart';
import 'package:medical_plants/Screens/LoginRegister/Widgets/MyButton.dart';
import 'package:medical_plants/Screens/UserProfile/Widget/FolowingTab.dart';
import 'package:medical_plants/Themes/MyColors.dart';
import 'package:get/get.dart';

import 'FolowIngErsListTabBar.dart';

TabController _tabController;

class UserProfilePageTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = 'مهسا شکری';
    String bio = 'بیوگرافی در این بخش درج میشود';
    String folowers = '۲۵۴';
    String folowing = '۶۹۸';
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
            child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height * 0.17,
                      color: kProfileUpColor,
                    ),
                    Container(
                      width: Get.width,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            folowNumbers(
                                number: folowers,
                                description: 'دنبال کننده ها'),
                            folowNumbers(
                                number: folowing,
                                description: 'دنبال شونده ها'),
                          ],
                        ),
                        Stack(
                          children: [
                            Positioned(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(kButtonColor),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 4)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                                child: Text('دنبال کردن'),
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                    top: Get.height * 0.055,
                    right: Get.height * 2 / 14,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          bio,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    )),
                Positioned(
                    right: 10,
                    top: Get.height / 10,
                    child: CircleAvatar(
                      radius: Get.height / 15,
                      backgroundImage: AssetImage('Assets/Images/p.png'),
                    ))
              ],
            ),
            Expanded(child: MyTabBar()),
          ],
        )),
      ),
    );
  }
}

Widget MyTabBar() {
  return DefaultTabController(
    length: 3,
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
                child: FittedBox(child: Text('مشاهدات')),
              ),
              Tab(
                child: FittedBox(child: Text('شناسایی شده ها')),
              ),
              Tab(
                child: FittedBox(child: Text('علاقه مندی ها')),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: Get.height * 0.6,
              width: Get.width,
              margin: EdgeInsets.only(
                top: 0,
                left: 20,
                right: 20,
              ),
              child: TabBarView(children: [
                PlantsGridView(
                  direction: Axis.vertical,
                ),
                PlantsGridView(
                  direction: Axis.vertical,
                ),
                PlantsGridView(
                  direction: Axis.vertical,
                ),
              ]),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget folowNumbers({String number, String description}) {
  return InkWell(
    onTap: () => Get.to(() => FolowIngErsListTabBar()),
    child: Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(fontSize: 22),
          ),
          Text(
            description,
            style: TextStyle(fontSize: 15, color: kSubTitleFontsColor),
          ),
        ],
      ),
    ),
  );
}
