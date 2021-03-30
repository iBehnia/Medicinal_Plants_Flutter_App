import 'package:flutter/material.dart';

import '../Themes/MyColors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: kButtonColor,
      scaffoldBackgroundColor: kBackGroundColor,
      fontFamily: 'iranSans',
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: kButtonColor,
      ),
    );
  }
}
