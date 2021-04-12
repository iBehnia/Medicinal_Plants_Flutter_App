import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_plants/GeneralWidgets/InputTxt.dart';
import 'package:medical_plants/GeneralWidgets/MyDropDownButton.dart';

class ReportStep2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              InputTxt(
                label: 'تاریخ',
              ),
              InputTxt(
                label: 'طول و عرض جغرافیایی',
              ),
              Row(
                children: [
                  MyDropDownButton(
                    items: ['first', 'second', 'tired'],
                    dropdownValue: 'first',
                    label: 'استان',
                    icon: Icon(null),
                  ),
                  SizedBox(
                    width: Get.width / 25,
                  ),
                  MyDropDownButton(
                    items: ['first', 'second', 'tired'],
                    dropdownValue: 'first',
                    label: 'دهستان',
                    icon: Icon(null),
                  )
                ],
              ),
              InputTxt(
                label: 'تراکم گیاه',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
