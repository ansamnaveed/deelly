// ignore_for_file: unused_local_variable

import 'package:deelly/app_module/dashboard/view/dashboard_view.dart';
import 'package:deelly/app_module/detail_page/view/detail_page.dart';
import 'package:deelly/app_module/sign_in/view/sign_in.dart';
import 'package:deelly/app_module/sign_up/view/sign_up.dart';
import 'package:deelly/app_module/home_screen/view/home_page.dart';
import 'package:deelly/app_module/splash_screen/view/splash_screen.dart';
import 'package:deelly/services/routes/route_strings.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    const animationDuration = Duration(milliseconds: 300);
    final routeArgs = settings.arguments;
    switch (settings.name) {
      case RouteString.splash_screen:
        return PageTransition(
          child: SplashScreen(),
          type: PageTransitionType.fade,
          duration: animationDuration,
        );
      case RouteString.sign_in:
        return PageTransition(
          child: SignIn(),
          type: PageTransitionType.rightToLeft,
          duration: animationDuration,
        );
      case RouteString.sign_up:
        return PageTransition(
          child: SignUp(),
          type: PageTransitionType.rightToLeft,
          duration: animationDuration,
        );
      case RouteString.dashboard:
        return PageTransition(
          child: DashboardView(),
          type: PageTransitionType.rightToLeft,
          duration: animationDuration,
        );
      case RouteString.detail:
        return PageTransition(
          child: DetailPage(),
          type: PageTransitionType.rightToLeft,
          duration: animationDuration,
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}
