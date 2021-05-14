import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/GeneralWidgets/InputTxt.dart';
import 'package:medical_plants/GeneralWidgets/MyDropDownButton.dart';
import 'package:medical_plants/Screens/LoginRegister/Widgets/MyButton.dart';
import 'package:medical_plants/Screens/Settings/Widgets/MyAppBar.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        myTitle: 'ویرایش حساب کاربری',
        func: () => Get.back(),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: Get.height / 15,
                      backgroundImage: AssetImage('Assets/Images/p.png'),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        child: CircleAvatar(
                          backgroundColor: kBackGroundColor,
                          child: IconButton(
                            splashColor: kBackGroundColor,
                            icon: Icon(
                              Icons.camera_alt,
                              color: kBlackFontsColor,
                            ),
                            onPressed: () {},
                          ),
                        ))
                  ],
                ),
                InputTxt(
                  label: 'نام کاربری',
                  suffix: SvgPicture.asset(
                      'Assets/Icons/LoginRegister/Profile.svg'),
                ),
                InputTxt(
                  label: 'پست الکترونیک',
                  suffix:
                      SvgPicture.asset('Assets/Icons/LoginRegister/Email.svg'),
                ),
                InputTxt(
                  label: 'کلمه عبور',
                  suffix:
                      SvgPicture.asset('Assets/Icons/LoginRegister/Lock.svg'),
                  isSecure: true,
                ),
                Row(children: [
                  MyDropDownButton(
                    items: ['first', 'second', 'tired'],
                    dropdownValue: 'first',
                    label: 'سطح تحصیلات',
                    icon: SvgPicture.asset(
                        'Assets/Icons/LoginRegister/Paper.svg'),
                  )
                ]),
                Row(children: [
                  MyDropDownButton(
                    items: ['first', 'second', 'tired'],
                    dropdownValue: 'first',
                    label: 'نوع گزارش',
                    icon:
                        SvgPicture.asset('Assets/Icons/LoginRegister/Edit.svg'),
                  )
                ]),
                Row(children: [
                  MyDropDownButton(
                    items: ['first', 'second', 'tired'],
                    dropdownValue: 'first',
                    label: 'سن',
                    icon: SvgPicture.asset(
                        'Assets/Icons/LoginRegister/Heart.svg'),
                  )
                ]),
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
