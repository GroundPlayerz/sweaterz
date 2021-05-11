import 'package:flutter/material.dart';
import 'package:sweaterz/constants/text_styles.dart';
import 'package:sweaterz/constants/colors.dart';

const double kIphoneXHeight = 812.0;
const double kIphoneXWidth = 375.0;

InputDecoration kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: kBodyTextStyle1M.copyWith(color: kGreyColor2_999999),
  contentPadding: EdgeInsets.fromLTRB(0, 10, 10, 10),
  //border: UnderlineInputBorder(),
  enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
    color: Colors.white.withOpacity(0),
    width: 2,
  )),
  focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
    color: Colors.white.withOpacity(0),
    width: 2,
  )),
);

final kAssetsPickerThemeData = ThemeData.light().copyWith(
  buttonColor: kSweaterzColor,
  brightness: Brightness.light,
  primaryColor: Colors.white,
  primaryColorBrightness: Brightness.light,
  primaryColorLight: Colors.white,
  primaryColorDark: Colors.grey[900],
  accentColor: kSweaterzColor,
  accentColorBrightness: Brightness.light,
  canvasColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  bottomAppBarColor: Colors.white,
  cardColor: Colors.white,
  highlightColor: Colors.transparent,
  toggleableActiveColor: kSweaterzColor,
  cursorColor: kSweaterzColor,
  textSelectionColor: kSweaterzColor.withAlpha(100),
  textSelectionHandleColor: kSweaterzColor,
  indicatorColor: kSweaterzColor,
  appBarTheme: const AppBarTheme(
    brightness: Brightness.light,
    elevation: 0,
  ),
  colorScheme: ColorScheme(
    primary: Colors.white,
    primaryVariant: Colors.white,
    secondary: kSweaterzColor,
    secondaryVariant: kSweaterzColor,
    background: Colors.white,
    surface: Colors.white,
    brightness: Brightness.light,
    error: const Color(0xffcf6679),
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
  ),
);

var kDivider = Container(
  color: kLightGreyColor1_EBEBEB,
  height: 1,
  width: double.infinity,
);
