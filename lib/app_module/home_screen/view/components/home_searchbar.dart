import 'package:deelly/utils/common_widgets/common_textfield.dart';
import 'package:deelly/utils/common_widgets/gradient_btn.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CommonTextField(
              hint: "Search...",
              borderColor: Color(0xFFE4E6ED),
              prefixIcon: Icon(
                Icons.search_rounded,
              ),
              textEditingController: TextEditingController(),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GradientIconButton(
            width: 50,
            height: 50,
            icon: Icon(
              Icons.filter_list_rounded,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
