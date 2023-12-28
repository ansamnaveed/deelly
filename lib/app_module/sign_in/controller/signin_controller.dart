import 'dart:convert';
import 'package:deelly/app_module/sign_up/model/signup_model.dart';
import 'package:deelly/services/routes/route_strings.dart';
import 'package:deelly/utils/constants/api_constants.dart';
import 'package:deelly/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;

class SignInController extends GetxController {
  RxBool loading = false.obs;
  signin(String mobile, String password, BuildContext context) async {
    loading.value = true;
    update();
    Rx<SignUpError> signInError = SignUpError().obs;
    var body = {
      "mobile_number": mobile,
      "password": password,
      "fcm_token": "",
    };
    print(body);
    try {
      await dio.Dio()
          .post(
        ApiConstant.BASE_URL + ApiConstant.SIGN_IN,
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
            throw Exception('Failed to SignIn');
          }
        },
      );
    } on dio.DioException catch (e) {
      loading.value = false;
      update();
      signInError.value = SignUpError.fromJson(
        jsonDecode(
          e.response.toString(),
        ),
      );
      update();
      Utilities.showToastMsg(
        signInError.value.message!.firstName != ""
            ? signInError.value.message!.firstName!
            : signInError.value.message!.lastName != ""
                ? signInError.value.message!.lastName!
                : signInError.value.message!.mobileNumber != ""
                    ? signInError.value.message!.mobileNumber!
                    : signInError.value.message!.password != ""
                        ? signInError.value.message!.password!
                        : "Unknown Error Occured!",
      );
    }
  }
}
