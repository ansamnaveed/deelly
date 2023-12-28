import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Utilities {
  static showToastMsg(String msg) {
    Get.showSnackbar(
      GetSnackBar(
        message: msg,
        mainButton: GestureDetector(
          onTap: () {
            Get.closeCurrentSnackbar();
          },
          child: Icon(
            Icons.close_rounded,
            color: Colors.white,
          ),
        ),
        duration: Duration(seconds: 5),
        snackPosition: SnackPosition.TOP,
        forwardAnimationCurve: Curves.bounceInOut,
        reverseAnimationCurve: Curves.bounceIn,
        margin: EdgeInsets.fromLTRB(Get.width / 2, 40.sp, 10.sp, 0),
        backgroundColor: color.appGreen,
      ),
    );
  }
}
