// ignore_for_file: unused_local_variable

import 'package:deelly/View/Screens/Auth/SignIn/SignIn.dart';
import 'package:deelly/View/Screens/Auth/SignUp/SignUp.dart';
import 'package:deelly/View/Screens/Home/HomePage/Home.dart';
import 'package:deelly/View/Screens/Splash/Splash.dart';
import 'package:deelly/View/Utilities/Routes/RouteStrings.dart';
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
      case RouteString.home:
        return PageTransition(
          child: HomeScreen(),
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
