import 'package:deelly/View/Utilities/ImagePaths.dart';
import 'package:deelly/View/Utilities/Routes/RouteStrings.dart';
import 'package:deelly/View/Utilities/StringNames.dart';
import 'package:deelly/View/WIdgets/CommonCheckBox.dart';
import 'package:deelly/View/WIdgets/CommonTextField.dart';
import 'package:deelly/View/Screens/Auth/SignIn/Widgets/CountryDropDown.dart';
import 'package:deelly/View/WIdgets/GradiantBtn.dart';
import 'package:deelly/View/WIdgets/ImageWidget.dart';
import 'package:deelly/View/WIdgets/SimpleAppbar.dart';
import 'package:deelly/View/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SimpleAppBar(
            name: StringNames.sign_up,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: ImageWidget(
                      imagePath: ImagePath.logo,
                      height: 50,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, bottom: 10),
                    child: Text(
                      StringNames.first_name,
                      style: TextStyle().testFieldTitle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp) +
                        EdgeInsets.only(bottom: 30),
                    child: CommonTextField(
                      password: true,
                      hint: StringNames.enter_first_name,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, bottom: 10),
                    child: Text(
                      StringNames.last_name,
                      style: TextStyle().testFieldTitle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp) +
                        EdgeInsets.only(bottom: 30),
                    child: CommonTextField(
                      password: true,
                      hint: StringNames.enter_last_name,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, bottom: 10),
                    child: Text(
                      StringNames.email,
                      style: TextStyle().testFieldTitle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp) +
                        EdgeInsets.only(bottom: 30),
                    child: CommonTextField(
                      password: true,
                      hint: StringNames.enter_email,
                      keyboard: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, bottom: 10.sp),
                    child: Text(
                      StringNames.phone_number,
                      style: TextStyle().testFieldTitle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp) +
                        EdgeInsets.only(bottom: 30),
                    child: CountryCodeDropdown(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, bottom: 10),
                    child: Text(
                      StringNames.create_password,
                      style: TextStyle().testFieldTitle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp) +
                        EdgeInsets.only(bottom: 30),
                    child: CommonTextField(
                      password: true,
                      hint: StringNames.create_password,
                      keyboard: TextInputType.visiblePassword,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp, bottom: 10),
                    child: Text(
                      StringNames.confirm_password,
                      style: TextStyle().testFieldTitle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: CommonTextField(
                      password: true,
                      hint: StringNames.confirm_password,
                      keyboard: TextInputType.visiblePassword,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(26),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          RouteString.sign_in,
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: StringNames.have_account,
                              style: TextStyle().brownTextStyle,
                            ),
                            TextSpan(
                              text: StringNames.login,
                              style: TextStyle().greenTextStyle,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.sp, 0, 20.sp, 20.sp),
                    child: GradientButton(
                      width: double.infinity,
                      text: StringNames.create_account,
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          RouteString.home,
                        );
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
