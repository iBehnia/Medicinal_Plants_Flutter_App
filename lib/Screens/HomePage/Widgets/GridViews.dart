import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GridViews extends StatelessWidget {
  double size;
  Widget gridCard;
  int rows;
  GridViews({this.size, this.rows, this.gridCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: size,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 1,
        children: List.generate(50, (index) => gridCard),
      ),
    );
  }
}
