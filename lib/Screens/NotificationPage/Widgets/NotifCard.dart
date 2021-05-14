import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class NotifCard extends StatelessWidget {
  String title;
  String value;
  NotifCard({this.value = '', this.title});
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
                flex: 10,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: CircleAvatar(
                    radius: Get.height / 28,
                    backgroundImage: AssetImage('Assets/Images/p.png'),
                  ),
                ),
              ),
              Expanded(
                flex: 25,
                child: Text(title + value),
              ),
              Expanded(
                flex: 10,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    margin: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(8),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            'Assets/Images/img1.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
