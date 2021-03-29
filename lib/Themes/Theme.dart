import 'package:flutter/material.dart';

import '../Themes/MyColors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    ThemeData.light().copyWith(
      primaryColor: kBackGroundColor,
      scaffoldBackgroundColor: kBackGroundColor,
      buttonColor: kButtonColor,
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      ),
    );
  }
}
