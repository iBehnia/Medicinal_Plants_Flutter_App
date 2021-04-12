import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/GeneralWidgets/InputTxt.dart';
import 'package:medical_plants/GeneralWidgets/MyCheckBox.dart';
import 'package:medical_plants/Screens/LoginRegister/Widgets/MyButton.dart';
import 'package:medical_plants/Screens/ReprotPages/Widgets/DashedImageBox.dart';
import 'package:medical_plants/Themes/MyColors.dart';

import 'ReportStep2Page.dart';

// todo:: convert to stateLess Class
class ReportStep1Page extends StatelessWidget {
  bool isUnKnown = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                DashedImageBox(),
                InputTxt(
                  label: 'نام علمی گیاه',
                ),
                InputTxt(
                  label: 'نام محلی گیاه',
                ),
                MyCheckBox(
                  isChecked: isUnKnown,
                  str: 'گیاه را نمی شناسم',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      txt: 'ادامه',
                      func: () {},
                    ),
                    SizedBox(
                      width: Get.width / 15,
                    ),
                    MyButton(
                      txt: 'ثبت اطلاعات',
                      color: kSecondButtonColor,
                      textColor: kBlackFontsColor,
                      func: () => Get.to(ReportStep2Page()),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
