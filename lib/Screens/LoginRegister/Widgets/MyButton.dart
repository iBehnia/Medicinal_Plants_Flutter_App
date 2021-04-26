import 'package:flutter/material.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class MyButton extends StatelessWidget {
  String txt;
  double height;
  double width;
  VoidCallback func;
  Color color;
  Color textColor;
  MyButton({
    @required this.txt,
    @required this.func,
    this.color = kButtonColor,
    this.textColor = kWhiteTextColor,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            padding: MaterialStateProperty.all(EdgeInsets.all(13)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          onPressed: () => func(),
          child: Text(
            txt,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
