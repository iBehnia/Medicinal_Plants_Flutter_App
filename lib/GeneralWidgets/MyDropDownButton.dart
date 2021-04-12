import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:medical_plants/Themes/MyColors.dart';
import 'package:get/get.dart';

class MyDropDownButton extends StatefulWidget {
  List<String> items;
  String dropdownValue;
  String label;
  Widget icon;
  MyDropDownButton({this.items, this.dropdownValue, this.label, this.icon});
  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButtonFormField(
            decoration: InputDecoration(
              labelText: widget.label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              prefixIcon: Container(
                margin: EdgeInsets.only(right: 15),
                child: widget.icon,
              ),
            ),
            value: widget.dropdownValue,
            onChanged: (String newValue) {
              setState(() {
                widget.dropdownValue = newValue;
              });
            },
            items: widget.items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
