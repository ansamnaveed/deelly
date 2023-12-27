import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';

class CommonCheckBox extends StatefulWidget {
  String title;
  CommonCheckBox({
    super.key,
    required this.title,
  });

  @override
  State<CommonCheckBox> createState() => _CommonCheckBoxState();
}

class _CommonCheckBoxState extends State<CommonCheckBox> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        setState(() {
          check = !check;
        });
      },
      dense: true,
      title: Row(
        children: [
          Checkbox(
            side: BorderSide(
              width: 1,
            ),
            activeColor: color.appGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            value: check,
            onChanged: (onChanged) {
              setState(() {
                check = onChanged!;
              });
            },
          ),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  bool check = false;
}
