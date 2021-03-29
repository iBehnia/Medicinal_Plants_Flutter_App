import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class NearestPlantsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: Get.height * 0.4,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        children: List.generate(50, (index) {
          return gridCard();
        }),
      ),
    );
  }
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
            fit: BoxFit.fill),
      ),
    ),
  ]);
}
