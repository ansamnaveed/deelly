import 'package:deelly/app_module/dashboard/controller/dashboard_controller.dart';
import 'package:deelly/app_module/dashboard/view/components/dashboard_components.dart';
import 'package:deelly/app_module/home_screen/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});
  final dashboardController = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          return Column(
            children: [
              Expanded(
                child: mainViewOfWidgets(
                  controller: dashboardController,
                  screen: HomeScreen(),
                ),
              ),
              bottomBarWidget(
                controller: dashboardController,
              )
            ],
          );
        },
      ),
    );
  }
}
