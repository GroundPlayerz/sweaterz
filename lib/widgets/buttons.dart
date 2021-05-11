import 'package:flutter/material.dart';
import 'package:sweaterz/constants/colors.dart';
import 'package:sweaterz/constants/text_styles.dart';

TextButton blueColorTextButton(
    {required String textContent,
    bool isButtonEnabled = true,
    required VoidCallback onPressed}) {
  return TextButton(
    style: TextButton.styleFrom(
      primary: Colors.red,
      //visualDensity: ,
      backgroundColor: isButtonEnabled
          ? kTextButtonBlueColor
          : kTextButtonBlueColor.withOpacity(0.4),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
    ), //styleFrom
    onPressed: isButtonEnabled ? onPressed : null,
    child: Text(
      textContent,
      style: kAppbarTextStyle.copyWith(color: kTextButtonBlueColor),
    ),
  );
}
