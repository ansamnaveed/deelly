import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Deals extends StatelessWidget {
  Deals({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: Get.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(0),
        itemCount: deals.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 15.sp),
            width: 40,
            height: 55,
            decoration: BoxDecoration(
              color: index == 0 ? color.appLightGreen : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: color.appLightGreen,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  deals[index],
                  style: TextStyle().dealsTitleStyle,
                ),
                Text(
                  index == 0 ? "Today" : "Nov",
                  style: TextStyle().dealsSubTitleStyle,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  List deals = [
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
  ];
}
