import 'dart:convert';
import 'package:deelly/app_module/sign_up/model/signup_model.dart';
import 'package:deelly/services/routes/route_strings.dart';
import 'package:deelly/utils/constants/api_constants.dart';
import 'package:deelly/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;

class SignUpController extends GetxController {
  RxBool loading = false.obs;
  Rx<SignUpError> signupError = SignUpError().obs;
  signup(String firstName, String lastName, String email, String mobile,
      String password, String confirmPassword, BuildContext context) async {
    loading.value = true;
    update();
    var body = {
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "code": 971,
      "mobile_number": mobile,
      "city": "Lahore",
      "country": "Pakistan",
      "password": password,
      "password_confirmation": confirmPassword,
      "fcm_token": "",
    };
    print(body);
    try {
      await dio.Dio()
          .post(
        ApiConstant.BASE_URL + ApiConstant.SIGN_UP,
        data: body,
      )
          .then(
        (response) {
          loading.value = false;
          update();
          print(
            body.toString(),
          );
          if (response.statusCode == 200 || response.statusCode == 201) {
            Navigator.of(context).pushNamedAndRemoveUntil(
              RouteString.dashboard,
              (route) => false,
            );
          } else {
            print("Here");
            throw Exception('Failed to SignUp');
          }
        },
      );
    } on dio.DioException catch (e) {
      loading.value = false;
      update();
      print("errrrrrrrrrrrrrrrrrrrrrrrrrr: " + e.toString());
      if (email == "") {
        Utilities.showToastMsg("Email is required");
      } else {
        signupError.value = SignUpError.fromJson(
          jsonDecode(
            e.response.toString(),
          ),
        );
        update();
        Utilities.showToastMsg(
          signupError.value.message!.firstName != ""
              ? signupError.value.message!.firstName!
              : signupError.value.message!.lastName != ""
                  ? signupError.value.message!.lastName!
                  : signupError.value.message!.mobileNumber != ""
                      ? signupError.value.message!.mobileNumber!
                      : signupError.value.message!.password != ""
                          ? signupError.value.message!.password!
                          : email != ""
                              ? "Email Field is Required."
                              : "Unknown Error Occured!",
        );
      }
    }
  }
}
