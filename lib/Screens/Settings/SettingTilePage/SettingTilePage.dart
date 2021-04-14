import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/LoginRegister/Widgets/MyButton.dart';
import 'package:medical_plants/Screens/Settings/Widgets/MyAppBar.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class SettingTilePage extends StatefulWidget {
  //todo:convert to stateLess
  @override
  _SettingTilePageState createState() => _SettingTilePageState();
}

class _SettingTilePageState extends State<SettingTilePage> {
  bool isEmailShow;
  bool isBioShow;
  bool isCommentSending;
  bool isAccountPrivate;
  double sliderValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        myTitle: 'تنظیمات',
      ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('نمایش پست الکترونیک'),
                    Spacer(),
                    Switch(
                        value: isEmailShow ?? false,
                        onChanged: (value) {
                          print('Log');
                          setState(() {
                            isEmailShow = value;
                          });
                        })
                  ],
                ),
                Row(
                  children: [
                    Text('سایز کلمات'),
                    Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: Slider(
                          activeColor: kActiveColor,
                          min: 10,
                          max: 20,
                          value: sliderValue ?? 14.0,
                          onChanged: (value) {
                            sliderValue = value;
                            setState(() {});
                          }),
                    ),
                    Text('${(sliderValue ?? 14).floor()}')
                  ],
                ),
                Row(
                  children: [
                    Text('نمایش بیوگرافی'),
                    Spacer(),
                    Switch(
                        value: isBioShow ?? false,
                        onChanged: (value) {
                          print('Log');
                          setState(() {
                            isBioShow = value;
                          });
                        })
                  ],
                ),
                Row(
                  children: [
                    Text('امکان ارسال نظر'),
                    Spacer(),
                    Switch(
                        value: isCommentSending ?? false,
                        onChanged: (value) {
                          print('Log');
                          setState(() {
                            isCommentSending = value;
                          });
                        })
                  ],
                ),
                Row(
                  children: [
                    Text('نمایش خصوصی حساب کاربر'),
                    Spacer(),
                    Switch(
                        value: isAccountPrivate ?? false,
                        onChanged: (value) {
                          print('Log');
                          setState(() {
                            isAccountPrivate = value;
                          });
                        })
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      txt: 'ثبت تغییرات',
                      func: () {},
                    ),
                    SizedBox(
                      width: Get.width / 15,
                    ),
                    MyButton(
                        txt: 'انصراف',
                        color: kSecondButtonColor,
                        textColor: kBlackFontsColor,
                        func: () {}),
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

class ReportStep2Page {}
