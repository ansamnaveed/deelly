import 'package:deelly/View/Utilities/ImagePaths.dart';
import 'package:deelly/View/Utilities/Routes/RouteStrings.dart';
import 'package:deelly/View/Utilities/StringNames.dart';
import 'package:deelly/View/WIdgets/BorderBtn.dart';
import 'package:deelly/View/WIdgets/GradiantBtn.dart';
import 'package:deelly/View/WIdgets/ImageWidget.dart';
import 'package:deelly/View/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.fromLTRB(37.sp, 0, 38.sp, 15),
            child: ImageWidget(
              imagePath: ImagePath.logo,
              width: 300.sp,
            ),
          ),
          Text(
            StringNames.splash_subtitle,
            style: TextStyle().splashScreenTitle,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.fromLTRB(15.sp, 0, 15.sp, 26.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BorderBtn(
                  text: StringNames.sign_in,
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      RouteString.sign_in,
                    );
                  },
                ),
                SizedBox(
                  width: 15.sp,
                ),
                GradientButton(
                  text: StringNames.sign_up,
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      RouteString.sign_up,
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
