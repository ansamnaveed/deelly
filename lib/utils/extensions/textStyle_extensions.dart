import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Color color = const Color(0xFFFFFFFF);

extension TextStyleMyExtension on TextStyle {
  TextStyle get splashScreenTitle {
    return TextStyle(
      color: color.appBlack,
      fontSize: 18,
      fontFamily: 'Outfit',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  TextStyle get gradBtnStyle {
    return TextStyle(
      color: Colors.white,
      fontSize: 14.sp,
      fontFamily: 'Outfit',
      fontWeight: FontWeight.w500,
      height: 0,
    );
  }

  TextStyle get homeAppBarDropDown {
    return TextStyle(
      color: color.appDarkBlue,
      fontSize: 14,
      fontFamily: 'Outfit',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  TextStyle get categoryTitle {
    return TextStyle(
      color: Color(0xFF303632),
      fontSize: 12,
      fontFamily: 'Outfit',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  TextStyle get dealsTitleStyle {
    return TextStyle(
      color: Color(0xFF628A79),
      fontSize: 18,
      fontFamily: 'Outfit',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  TextStyle get dealsSubTitleStyle {
    return TextStyle(
      color: Color(0xFF628A79),
      fontSize: 10,
      fontFamily: 'Outfit',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  TextStyle get discounts {
    return TextStyle(
      color: Color(0xFF628A79),
      fontSize: 16,
      fontFamily: 'Outfit',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  TextStyle get homeTitle {
    return TextStyle(
      color: Color(0xFF101928),
      fontSize: 18,
      fontFamily: 'Outfit',
      fontWeight: FontWeight.w500,
      height: 0,
    );
  }

  TextStyle get greenTextStyle {
    return TextStyle(
      color: color.appGreen,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get brownTextStyle {
    return TextStyle(
      color: color.appBrown,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get borderBtnStyle {
    return TextStyle(
      color: color.appDarkBlue,
      fontSize: 14.sp,
      fontFamily: 'Outfit',
      fontWeight: FontWeight.w500,
      height: 0,
    );
  }

  TextStyle get detailTitleStyle {
    return TextStyle(
      color: Color(0xFF101928),
      fontSize: 36,
      fontFamily: 'Outfit',
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle get appBarStyle {
    return TextStyle(
      color: Colors.black,
      fontSize: 25.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get testFieldTitle {
    return TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get forgetPasswordStyle {
    return TextStyle(
      color: color.appBlueShaded,
      fontSize: 12.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }
}
