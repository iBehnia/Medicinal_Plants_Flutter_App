import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  String myTitle;
  VoidCallback func;
  MyAppBar({this.myTitle, this.func});
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(56),
      child: AppBar(
        title: Text(
          myTitle,
          style: TextStyle(
            fontSize: 18,
            color: kSettingPageLogoAndFontsTilesColor,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: 24,
          ),
          onPressed: () => func(),
        ),
        elevation: 0,
        backgroundColor: kBackGroundColor,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
