import 'package:flutter/material.dart';
import 'package:water_drop/theme/app_colors.dart';

abstract class TextStyles {
  static const TextStyle pageTitleStyle = TextStyle(
      fontFamily: 'Poppins-Bold', color: lightTitleColor, fontSize: 24);
  static const TextStyle descriptionStyle = TextStyle(
      fontFamily: 'Poppins', color: darkBackgroundColor, fontSize: 16, fontStyle: FontStyle.italic);
  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: 'Poppins-Bold', color: lightBackgroundColor, fontSize: 14);
}

abstract class ButtonStyles{
  static ButtonStyle generalButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(generalButtonColor),
    elevation: MaterialStateProperty.all(5),
    padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
    textStyle: MaterialStateProperty.all(TextStyles.buttonTextStyle)
  );
}
