import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/services/routes/route_strings.dart';
import 'package:deelly/utils/common_widgets/string_names.dart';
import 'package:deelly/utils/common_widgets/common_checkbox.dart';
import 'package:deelly/utils/common_widgets/common_textfield.dart';
import 'package:deelly/app_module/sign_in/view/components/country_dropdown.dart';
import 'package:deelly/utils/common_widgets/gradient_btn.dart';
import 'package:deelly/utils/common_widgets/image_widget.dart';
import 'package:deelly/utils/common_widgets/simple_appbar.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SimpleAppBar(
            name: StringNames.sign_in,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 72),
                    child: ImageWidget(
                      imagePath: ImagePath.logo,
                      height: 75,
                      width: 230,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, bottom: 10),
                    child: Text(
                      StringNames.phone_number,
                      style: TextStyle().testFieldTitle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: CountryCodeDropdown(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, bottom: 10, top: 30),
                    child: Text(
                      StringNames.password,
                      style: TextStyle().testFieldTitle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: CommonTextField(
                      password: true,
                      hint: StringNames.password,
                      keyboard: TextInputType.visiblePassword,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.sp, top: 9),
                    alignment: Alignment.centerRight,
                    child: Text(
                      StringNames.forget_password,
                      textAlign: TextAlign.center,
                      style: TextStyle().forgetPasswordStyle,
                    ),
                  ),
                  CommonCheckBox(
                    title: StringNames.t_and_c,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 54, bottom: 73),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          RouteString.sign_up,
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: StringNames.dont_have_account,
                              style: TextStyle().brownTextStyle,
                            ),
                            TextSpan(
                              text: StringNames.sign_up,
                              style: TextStyle().greenTextStyle,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.sp, 0, 20.sp, 0),
                    child: GradientButton(
                      width: double.infinity,
                      text: StringNames.login,
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            RouteString.dashboard, (route) => false);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
