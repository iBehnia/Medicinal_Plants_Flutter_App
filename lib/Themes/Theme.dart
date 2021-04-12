import 'package:flutter/material.dart';

import '../Themes/MyColors.dart';

class Themes {
  static final light = ThemeData(
    primaryColor: kButtonColor,
    scaffoldBackgroundColor: kBackGroundColor,
    fontFamily: 'iranSans',
    buttonColor: kButtonColor,
    textTheme: TextTheme(),
    accentColor: kButtonColor,
    primaryColorLight: kButtonColor,
    buttonTheme: ButtonThemeData(
      padding: EdgeInsets.all(13),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      buttonColor: kButtonColor,
    ),
  );
}
