import 'package:flutter/material.dart';
import 'package:medical_plants/Themes/MyColors.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'جست و جو',
        fillColor: kSearchBarColor,
      ),
    );
  }
}
