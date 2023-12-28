import 'package:deelly/app_module/dashboard/controller/dashboard_controller.dart';
import 'package:deelly/app_module/dashboard/model/dashboard_model.dart';
import 'package:deelly/utils/common_widgets/string_names.dart';
import 'package:flutter/material.dart';

///      Bottom Bar Widget of Dashboard

Widget bottomBarWidget({required DashboardController controller}) {
  return Container(
    height: 89,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0x0C000000),
          blurRadius: 20,
          offset: Offset(0, -10),
          spreadRadius: 0,
        )
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (int i = 0; i < dashboardBarDataList.length; i++)
          InkWell(
            onTap: () {
              controller.updateBottomSelectedIndex(i);
            },
            child: Container(
              padding: controller.bottomSelectedIndex.value == i
                  ? EdgeInsets.symmetric(horizontal: 22)
                  : EdgeInsets.all(0),
              width: controller.bottomSelectedIndex.value == i ? 130 : 24,
              height: 50,
              decoration: controller.bottomSelectedIndex.value == i
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment(1.00, -0.06),
                        end: Alignment(-1, 0.06),
                        colors: [
                          Color(0xFF5ACD84),
                          Color(0xFF56ADFF),
                        ],
                      ),
                    )
                  : BoxDecoration(),
              child: controller.bottomSelectedIndex.value == i
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(
                          image: AssetImage(
                            dashboardBarDataList[i].icon!,
                          ),
                          color: Colors.white,
                          width: 24,
                          height: 24,
                        ),
                        Text(
                          dashboardBarDataList[i].title!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    )
                  : Image(
                      image: AssetImage(
                        dashboardBarDataList[i].icon!,
                      ),
                      color: Colors.black.withOpacity(0.2),
                      width: 24,
                      height: 24,
                    ),
            ),
          )
      ],
    ),
  );
}

///      Main Widgets of Dashboard

Widget mainViewOfWidgets(
    {required DashboardController controller, required Widget screen}) {
  List<Widget> mainWidgetsList = [
    screen,
    Center(
      child: Text(
        StringNames.coming_soon,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: 0.03,
        ),
      ),
    ),
    Center(
      child: Text(
        StringNames.coming_soon,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: 0.03,
        ),
      ),
    ),
    Center(
      child: Text(
        StringNames.coming_soon,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: 0.03,
        ),
      ),
    ),
  ];
  return mainWidgetsList[controller.bottomSelectedIndex.value];
}
