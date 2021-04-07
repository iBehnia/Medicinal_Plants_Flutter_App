import 'package:flutter/material.dart';

import '../Themes/MyColors.dart';

class Themes {
  static final light = ThemeData(
    primaryColor: kButtonColor,
    scaffoldBackgroundColor: kBackGroundColor,
    fontFamily: 'iranSans',
    accentColor: kButtonColor,
    primaryColorLight: kButtonColor,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      buttonColor: kButtonColor,
    ),
  );
}
