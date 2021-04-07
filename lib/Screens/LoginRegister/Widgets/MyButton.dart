import 'package:flutter/material.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class MyButton extends StatelessWidget {
  String txt;
  VoidCallback func;
  MyButton({this.txt, this.func});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
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
          onPressed: () => func(),
          child: Text(txt),
        ),
      ),
    );
  }
}
