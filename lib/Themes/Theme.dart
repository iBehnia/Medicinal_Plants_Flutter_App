import 'package:flutter/material.dart';

import '../Themes/MyColors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    ThemeData.light().copyWith(
      primaryColor: Colors.amberAccent,
      scaffoldBackgroundColor: kbackGroundColor,
      buttonColor: kButtonColor,
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      ),
    );
  }
}
