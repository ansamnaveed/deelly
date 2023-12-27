import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/utils/common_widgets/image_widget.dart';
import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';

class DealDetail extends StatelessWidget {
  const DealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                begin: Alignment(1.00, -0.06),
                end: Alignment(-1, 0.06),
                colors: [Color(0xFF5ACD84), Color(0xFF56ADFF)],
              ).createShader(bounds);
            },
            child: Text(
              '30% off',
              style: TextStyle(
                color: Color(0xFF5ACD84),
                fontSize: 30,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  ImageWidget(
                    imagePath: ImagePath.fire,
                    width: 17,
                    height: 21,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Sold:',
                    style: TextStyle(
                      color: Color(0xFFA3A6AC),
                      fontSize: 14,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '564',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF101928),
                      fontSize: 14,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '5.0',
                    style: TextStyle(
                      color: Color(0xFFB2B2B2),
                      fontSize: 12,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.star_rounded,
                    size: 12,
                    color: color.appGreen,
                  ),
                  Text(
                    '(7 reviews)',
                    style: TextStyle(
                      color: Color(0xFFA3A6AC),
                      fontSize: 12,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
