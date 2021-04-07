import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_plants/GeneralWidgets/InputTxt.dart';
import 'package:medical_plants/Screens/LoginRegister/PasswordRecoveryPage.dart';
import 'package:medical_plants/Themes/MyColors.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height / 20,
            ),
            InputTxt(
              lable: 'نام کاربری یا ایمیل',
              suffix: SvgPicture.asset('Assets/Icons/LoginRegister/Email.svg'),
            ),
            InputTxt(
              lable: 'کلمه عبور',
              suffix: SvgPicture.asset('Assets/Icons/LoginRegister/Lock.svg'),
              isSecure: true,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                onPressed: () {
                  Get.to(PasswordRecoveryPage());
                },
                child: Text(
                  'آیا کلمه عبور خود را فراموش کرده اید؟',
                  style: TextStyle(color: kFocusInputTxt, fontSize: 11),
                ),
              ),
            ]),
            SizedBox(
              height: Get.height / 20,
            ),
            Row(children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kButtonColor),
                    padding: MaterialStateProperty.all(EdgeInsets.all(13)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('ورود'),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
