import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/GeneralWidgets/BottomNavigator.dart';
import 'package:medical_plants/Screens/Settings/SettingsPage.dart';
import 'package:medical_plants/Screens/Settings/Widgets/MyAppBar.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        myTitle: 'تماس با ما',
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Assets/Images/Logo.png',
                      height: Get.height / 4,
                    ),
                    Text(
                      'با طبیعت ارتباط برقرار کنید',
                      style: TextStyle(color: kButtonColor),
                    ),
                  ],
                ),
                SizedBox(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactUsText(iconName: 'Calling', title: '09123456789'),
                    ContactUsText(
                        iconName: 'Message', title: 'dimap@gmail.com'),
                    ContactUsText(
                        iconName: 'Location',
                        title: 'بوستان یاس فاطمی دفتر مرکزی دای مپ'),
                    ContactUsText(iconName: 'Camera', title: 'dimap@'),
                    ContactUsText(iconName: 'Telegram', title: 'dimap@'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget ContactUsText({String iconName, String title}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              flex: 15,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'Assets/Icons/SettingsPage/ContactUs/$iconName.svg',
                  height: 25,
                  width: 25,
                ),
              ),
            ),
            Expanded(
              flex: 85,
              child: Text(
                title,
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
        Divider(),
      ],
    ),
  );
}
