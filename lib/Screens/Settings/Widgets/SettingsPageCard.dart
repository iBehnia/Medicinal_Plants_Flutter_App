import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class SettingsPageCard extends StatelessWidget {
  String tile;
  Widget icon;
  VoidCallback function;
  SettingsPageCard({this.icon, this.tile, this.function});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => function(),
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: kSettingPageTilesColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
            bottom: Radius.circular(3),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
                backgroundColor: kSettingPageLogoAndFontsTilesColor,
                child: icon),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  tile,
                  style: TextStyle(
                      color: kSettingPageLogoAndFontsTilesColor, fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
