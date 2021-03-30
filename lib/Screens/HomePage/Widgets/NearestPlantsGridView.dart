import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class NearestPlantsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: Get.height * 0.4,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        children: List.generate(50, (index) => gridCard()),
      ),
    );
  }

  Widget gridCard() {
    return Stack(children: [
      Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
            bottom: Radius.circular(3),
          ),
          image: DecorationImage(
              image: AssetImage(
                'Assets/Images/img1.jpg',
              ),
              fit: BoxFit.cover),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.8),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    icon: Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.red,
                    ),
                    onPressed: () {})
              ],
            ),
            Expanded(child: SizedBox()),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.2),
                  child: Text(
                    'کاسنی',
                    style: TextStyle(
                      color: kBackGroundColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
