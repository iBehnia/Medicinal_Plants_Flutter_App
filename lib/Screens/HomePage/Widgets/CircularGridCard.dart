import 'package:flutter/material.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class CircularGridCard extends StatelessWidget {
  Color color;
  CircularGridCard({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(children: [
            CircleAvatar(
              // todo: size of Circular avatar
              backgroundColor: color,
              radius: 56,
              child: CircleAvatar(
                radius: 54,
                backgroundColor: kBackGroundColor,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('Assets/Images/p.png'),
                ),
              ),
            ),
            SizedBox(height: 10)
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  'حسام امیری',
                  style: TextStyle(color: kWhiteTextColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
