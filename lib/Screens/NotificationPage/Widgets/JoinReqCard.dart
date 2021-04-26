import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Screens/LoginRegister/Widgets/MyButton.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class JoinReqCard extends StatelessWidget {
  String name = 'فاطمه اصغری';
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      borderOnForeground: true,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: Get.height / 28,
                  backgroundImage: AssetImage('Assets/Images/p.png'),
                ),
              ),
              Text(name),
              Spacer(),
              // todo: button Must to be bigger
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kButtonColor),
                  padding: MaterialStateProperty.all(EdgeInsets.all(3)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: Text('تایید'),
              ),
              SizedBox(
                width: Get.width / 23,
              ),
              IconButton(
                  icon: SvgPicture.asset(
                      'Assets/Icons/NotificationPage/Delete.svg'),
                  onPressed: () {})
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
