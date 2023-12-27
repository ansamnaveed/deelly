// ignore_for_file: must_be_immutable

import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/utils/common_widgets/string_names.dart';
import 'package:deelly/utils/common_widgets/image_widget.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        categories.length,
        (index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: categories[index]['color'],
                ),
                child: ImageWidget(
                  imagePath: categories[index]['image'],
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                categories[index]['name'],
                style: TextStyle().categoryTitle,
              )
            ],
          );
        },
      ),
    );
  }

  List categories = [
    {
      "name": StringNames.dining,
      "image": ImagePath.dining,
      "color": Color(0xFFD4F4EC),
    },
    {
      "name": StringNames.spa,
      "image": ImagePath.spa,
      "color": Color(0xFFF5E3DA),
    },
    {
      "name": StringNames.enter,
      "image": ImagePath.enter,
      "color": Color(0xFFF5DBDB),
    },
    {
      "name": StringNames.sfa,
      "image": ImagePath.sfa,
      "color": Color(0xFFCFE9FD),
    },
  ];
}
