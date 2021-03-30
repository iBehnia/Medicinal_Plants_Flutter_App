import 'package:flutter/material.dart';

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
      child: TextField(
        textAlign: TextAlign.right,
        obscureText: isSecure,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          hintTextDirection: TextDirection.rtl,
          labelStyle: TextStyle(),
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 2.0,
            ),
          ),
          suffix: Container(
            margin: EdgeInsets.only(right: 10, top: 10),
            child: suffix,
          ),
          prefix: prefix,
          labelText: lable,
        ),
      ),
    );
  }
}
