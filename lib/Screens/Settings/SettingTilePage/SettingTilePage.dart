import 'package:flutter/material.dart';
import 'package:medical_plants/Screens/Settings/Widgets/MyAppBar.dart';

class SettingTilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        myTitle: 'تنظیمات',
      ),
    );
  }
}
