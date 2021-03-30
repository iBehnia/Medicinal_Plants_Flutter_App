import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medical_plants/Screens/HomePage/Widgets/GridViews.dart';
import 'package:medical_plants/Themes/MyColors.dart';

import 'CircularGridCard.dart';

class BestObserversGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViews(
      gridCard: CircularGridCard(
        color: kButtonColor,
      ),
      rows: 1,
      size: Get.height * 0.15,
    );
  }
}
