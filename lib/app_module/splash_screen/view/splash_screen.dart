import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/services/routes/route_strings.dart';
import 'package:deelly/utils/common_widgets/string_names.dart';
import 'package:deelly/utils/common_widgets/border_btn.dart';
import 'package:deelly/utils/common_widgets/gradient_btn.dart';
import 'package:deelly/utils/common_widgets/image_widget.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              width: 300,
              height: 100.sp,
              fit: BoxFit.contain,
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
                  width: Get.width / 2.5,
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
                  width: Get.width / 2.5,
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
