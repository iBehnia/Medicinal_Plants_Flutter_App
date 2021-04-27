import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class FolowingCard extends StatelessWidget {
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
              // todo: button Must to be bigger
              Expanded(
                flex: 15,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(kCancelButtonColor),
                    padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: Text('دنبال نکردن'),
                ),
              ),
              SizedBox(
                width: Get.width / 12,
              )
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
