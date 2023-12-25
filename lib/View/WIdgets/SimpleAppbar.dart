import 'package:deelly/View/Utilities/StringNames.dart';
import 'package:deelly/View/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SimpleAppBar extends StatelessWidget {
  String name;
  SimpleAppBar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80),
      alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            iconSize: 15.sp,
            icon: Icon(
              Icons.arrow_back_rounded,
            ),
          ),
          Text(
            name,
            style: TextStyle().appBarStyle,
          ),
        ],
      ),
    );
  }
}
