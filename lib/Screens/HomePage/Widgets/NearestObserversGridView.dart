import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class NearestObserversGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: Get.height * 0.15,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 1,
        children: List.generate(50, (index) => gridCard()),
      ),
    );
  }

  Widget gridCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          SizedBox(
            child: CircleAvatar(
              backgroundImage: AssetImage('Assets/Images/p.png'),
            ),
          ),
          Column(
            children: [
              Container(
                child: Text(
                  'حسام امیری',
                  style: TextStyle(color: kWhiteTextColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
