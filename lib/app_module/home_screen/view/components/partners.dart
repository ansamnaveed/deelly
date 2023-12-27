import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/utils/common_widgets/image_widget.dart';
import 'package:flutter/material.dart';

class Partners extends StatelessWidget {
  const Partners({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      shrinkWrap: true,
      padding: EdgeInsets.all(0),
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFDADADA)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: ImageWidget(
            imagePath: ImagePath.partner,
            height: 20,
            width: 80,
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
}
