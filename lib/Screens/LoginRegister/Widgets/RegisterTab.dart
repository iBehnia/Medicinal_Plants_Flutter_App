import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_plants/GeneralWidgets/InputTxt.dart';
import 'package:medical_plants/GeneralWidgets/MyDropDownButton.dart';
import 'package:medical_plants/Themes/MyColors.dart';
import 'package:get/get.dart';

import '../Widgets/MyButton.dart';

class RegisterTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InputTxt(
            label: 'نام کاربری',
            suffix: SvgPicture.asset('Assets/Icons/LoginRegister/Profile.svg'),
          ),
          InputTxt(
            label: 'پست الکترونیک',
            suffix: SvgPicture.asset('Assets/Icons/LoginRegister/Email.svg'),
          ),
          InputTxt(
            label: 'کلمه عبور',
            suffix: SvgPicture.asset('Assets/Icons/LoginRegister/Lock.svg'),
            isSecure: true,
          ),
          Row(children: [
            MyDropDownButton(
              items: ['first', 'second', 'tired'],
              dropdownValue: 'first',
              label: 'سطح تحصیلات',
              icon: SvgPicture.asset('Assets/Icons/LoginRegister/Paper.svg'),
            )
          ]),
          Row(children: [
            MyDropDownButton(
              items: ['first', 'second', 'tired'],
              dropdownValue: 'first',
              label: 'نوع گزارش',
              icon: SvgPicture.asset('Assets/Icons/LoginRegister/Edit.svg'),
            )
          ]),
          Row(children: [
            MyDropDownButton(
              items: ['first', 'second', 'tired'],
              dropdownValue: 'first',
              label: 'سن',
              icon: SvgPicture.asset('Assets/Icons/LoginRegister/Heart.svg'),
            )
          ]),
          Row(children: [
            MyButton(
              txt: 'ثبت نام',
              func: () {},
            ),
          ])
        ],
      ),
    );
  }
}
