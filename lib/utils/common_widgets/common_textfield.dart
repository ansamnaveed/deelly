// ignore_for_file: must_be_immutable

import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class CommonTextField extends StatelessWidget {
  String hint;
  bool password;
  TextInputType keyboard;
  Color bgColor;
  Color borderColor;
  Widget? prefixIcon;
  CommonTextField(
      {super.key,
      required this.hint,
      this.password = false,
      this.keyboard = TextInputType.text,
      this.bgColor = Colors.white,
      this.borderColor = Colors.black,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: password,
      keyboardType: keyboard,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        fillColor: bgColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.sp,
          ),
          borderSide: BorderSide(
            color: borderColor,
            width: 1.sp,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.sp,
          ),
          borderSide: BorderSide(
            color: borderColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
