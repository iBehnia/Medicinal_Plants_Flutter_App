import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/Settings/Widgets/MyAppBar.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class AbuotUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
      myTitle: 'درباره ما',
    ));
  }
}
