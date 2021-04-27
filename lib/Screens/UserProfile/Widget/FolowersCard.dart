import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FolowersCard extends StatelessWidget {
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
              Expanded(
                flex: 15,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: CircleAvatar(
                    radius: Get.height / 28,
                    backgroundImage: AssetImage('Assets/Images/p.png'),
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: Text(name),
              ),
              Expanded(
                flex: 8,
                child: IconButton(
                    icon: SvgPicture.asset(
                        'Assets/Icons/NotificationPage/Delete.svg'),
                    onPressed: () {}),
              ),
              SizedBox(
                width: Get.width / 15,
              )
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
