//buttonwidget.dart file

import 'package:flutter/material.dart';
import 'package:pizza/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  String buttonText;
  ButtonWidget({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        buttonText,
        style: TextStyle(color: fontColor1),
      ),
      style: TextButton.styleFrom(backgroundColor: mainColor),
    );
  }
}
