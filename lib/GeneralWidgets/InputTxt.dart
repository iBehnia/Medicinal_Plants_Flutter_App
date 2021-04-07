import 'package:flutter/material.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class InputTxt extends StatelessWidget {
  bool isSecure;
  Widget suffix;
  Widget prefix;
  String lable;
  InputTxt({this.isSecure = false, this.suffix, this.lable, this.prefix});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          obscureText: isSecure,
          decoration: InputDecoration(
            labelStyle: TextStyle(),
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            prefixIcon: Container(
              margin: EdgeInsets.only(right: 10),
              child: suffix,
            ),
            suffix: prefix,
            labelText: lable,
          ),
        ),
      ),
    );
  }
}
