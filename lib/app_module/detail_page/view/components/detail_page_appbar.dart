import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailPageAppbar extends StatelessWidget {
  const DetailPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.800000011920929),
                shape: OvalBorder(),
              ),
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
            size: 30,
          )
        ],
      ),
    );
  }
}
