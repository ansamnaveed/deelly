import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeDiscount extends StatelessWidget {
  HomeDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: Get.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(0),
        itemCount: discounts.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 15.sp),
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: color.appLightGreen,
              ),
            ),
            child: Text(
              "Up to ${discounts[index]}%",
              style: TextStyle().discounts,
            ),
          );
        },
      ),
    );
  }

  List discounts = [
    "10",
    "20",
    "30",
    "40",
  ];
}
