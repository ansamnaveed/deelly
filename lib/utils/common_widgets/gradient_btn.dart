// ignore_for_file: must_be_immutable

import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  double width, height;

  GradientButton({
    required this.text,
    required this.onPressed,
    this.height = 50,
    this.width = 165,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
      ),
      child: Ink(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            end: Alignment(1.00, -0.06),
            begin: Alignment(-1, 0.06),
            colors: [
              color.appGreen,
              color.appBlue,
            ],
          ),
        ),
        child: Container(
          height: height,
          width: width,
          constraints: BoxConstraints(minWidth: 88.0, minHeight: 36.0),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle().gradBtnStyle,
          ),
        ),
      ),
    );
  }
}

class GradientIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;
  double width, height;

  GradientIconButton({
    required this.icon,
    required this.onPressed,
    this.height = 50,
    this.width = 165,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
      ),
      child: Ink(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            end: Alignment(1.00, -0.06),
            begin: Alignment(-1, 0.06),
            colors: [
              color.appGreen,
              color.appBlue,
            ],
          ),
        ),
        child: icon,
      ),
    );
  }
}
