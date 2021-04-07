import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/GeneralWidgets/InputTxt.dart';
import 'package:medical_plants/Screens/LoginRegister/Widgets/MyButton.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class NewPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height / 20,
              ),
              Image.asset(
                'Assets/Images/Logo.png',
                height: Get.height / 9,
              ),
              SizedBox(
                height: Get.height / 15,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 20),
                child: FittedBox(
                  child: Text(
                    'لطفا کلمه عبور جدید را وارد کنید',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kUnSelectedColor,
                    ),
                  ),
                ),
              ),
              InputTxt(
                lable: 'کلمه عبور',
                suffix: SvgPicture.asset('Assets/Icons/LoginRegister/Lock.svg'),
                isSecure: true,
              ),
              Row(children: [
                MyButton(
                  txt: 'دریافت کلمه عبور جدید',
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
