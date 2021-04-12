import 'package:flutter/material.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class MyCheckBox extends StatefulWidget {
  bool isChecked;
  String str;
  MyCheckBox({this.isChecked = false, this.str});

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            splashColor: Colors.white,
            icon: widget.isChecked
                ? Icon(
                    Icons.check_circle_rounded,
                    color: kActiveColor,
                  )
                : Icon(Icons.remove_circle_outline_outlined),
            onPressed: () {
              widget.isChecked = !widget.isChecked;
              setState(() {});
            }),
        Text(widget.str),
      ],
    );
  }
}
