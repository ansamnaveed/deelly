import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:flutter/material.dart';

class TopImageStack extends StatelessWidget {
  const TopImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: Row(
        children: List.generate(
          5,
          (index) {
            return Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 10),
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImagePath.deal_of_day,
                  ),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: index == 4
                  ? Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '+5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
