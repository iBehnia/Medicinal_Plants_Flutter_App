import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/Settings/AboutUs/AboutUs.dart';
import 'package:medical_plants/Screens/Settings/ContactUsPage/ContactUsPage.dart';
import 'package:medical_plants/Screens/Settings/QAPage/QAPage.dart';
import 'package:medical_plants/Screens/Settings/SettingTilePage/SettingTilePage.dart';

import 'EditProfilePage/EditProfilePage.dart';
import 'Widgets/SettingsPageCard.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: 40,
            left: 15,
            right: 15,
          ),
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            children: [
              SettingsPageCard(
                function: () => Get.to(EditProfilePage()),
                icon: SvgPicture.asset('Assets/Icons/SettingsPage/Edit.svg'),
                tile: 'ویرایش حساب کاربری',
              ),
              SettingsPageCard(
                function: () => Get.to(SettingTilePage()),
                icon: SvgPicture.asset('Assets/Icons/SettingsPage/Setting.svg'),
                tile: 'تنظیمات',
              ),
              SettingsPageCard(
                function: () => Get.to(QAPage()),
                icon: SvgPicture.asset('Assets/Icons/SettingsPage/Chat.svg'),
                tile: 'پرسش و پاسخ',
              ),
              SettingsPageCard(
                function: () => Get.to(AbuotUs()),
                icon: SvgPicture.asset('Assets/Icons/SettingsPage/Users.svg'),
                tile: 'درباره ما',
              ),
              SettingsPageCard(
                function: () => Get.to(ContactUsPage()),
                icon: SvgPicture.asset('Assets/Icons/SettingsPage/Call.svg'),
                tile: 'تماس با ما',
              ),
              SettingsPageCard(
                icon: SvgPicture.asset('Assets/Icons/SettingsPage/Logout.svg'),
                tile: 'خروج',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
