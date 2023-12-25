import 'package:deelly/View/extensions/colors_extensions.dart';
import 'package:deelly/View/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';

class BorderBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  double width;
  double height;

  BorderBtn({
    required this.text,
    required this.onPressed,
    this.width = 165,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.white,
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
        ),
        child: Container(
          height: height,
          width: width,
          constraints: BoxConstraints(minWidth: 88.0, minHeight: 36.0),
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1.50,
                color: color.appGreen,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            text,
            style: TextStyle().borderBtnStyle,
          ),
        ),
      ),
    );
  }
}
