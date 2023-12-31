import 'package:deelly/app_module/sign_up/controller/signup_controller.dart';
import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/services/routes/route_strings.dart';
import 'package:deelly/utils/common_widgets/string_names.dart';
import 'package:deelly/utils/common_widgets/common_textfield.dart';
import 'package:deelly/app_module/sign_in/view/components/country_dropdown.dart';
import 'package:deelly/utils/common_widgets/gradient_btn.dart';
import 'package:deelly/utils/common_widgets/image_widget.dart';
import 'package:deelly/utils/common_widgets/simple_appbar.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController cPassController = TextEditingController();

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
                      textEditingController: fNameController,
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
                      textEditingController: lNameController,
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
                      textEditingController: emailController,
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
                    child: CountryDropDown(
                      phoneController: phoneController,
                    ),
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
                      textEditingController: passController,
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
                      textEditingController: cPassController,
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
                    child: Obx(
                      () {
                        return GradientButton(
                          width: double.infinity,
                          text: controller.loading.isTrue
                              ? "Loading......"
                              : StringNames.create_account,
                          onPressed: controller.loading.isTrue
                              ? () {}
                              : () {
                                  controller.signup(
                                    fNameController.text,
                                    lNameController.text,
                                    emailController.text,
                                    phoneController.text,
                                    passController.text,
                                    cPassController.text,
                                    context,
                                  );
                                },
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

  SignUpController controller = Get.put(SignUpController());
}
