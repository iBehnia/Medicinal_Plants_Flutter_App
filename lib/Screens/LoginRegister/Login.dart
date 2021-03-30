import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_plants/GeneralWidgets/InputTxt.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'Assets/Images/Logo.png',
          ),
          Row(children: [
            borderButton('ورود'),
            borderButton('ثبت نام'),
          ]),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                InputTxt(
                  lable: 'نام کاربری یا ایمیل',
                  suffix:
                      SvgPicture.asset('Assets/Icons/LoginRegister/Email.svg'),
                ),
                InputTxt(
                  lable: 'کلمه عبور',
                  suffix:
                      SvgPicture.asset('Assets/Icons/LoginRegister/Lock.svg'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget borderButton(String str) {
  return Expanded(
    child: OutlinedButton(
      onPressed: () {},
      child: Text(str),
    ),
  );
}
