import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsTiles extends StatelessWidget {
  String title;
  String value;

  DetailsTiles({this.title, this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SvgPicture.asset('Assets/Icons/PlantProfile/Check.svg'),
          Text('  ' + title + ':  '),
          Text(value),
        ],
      ),
    );
  }
}
