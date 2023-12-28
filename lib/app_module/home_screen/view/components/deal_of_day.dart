// ignore_for_file: must_be_immutable

import 'package:deelly/services/routes/route_strings.dart';
import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/utils/common_widgets/image_widget.dart';
import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DealOfDay extends StatelessWidget {
  DealOfDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 256,
      width: Get.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(0),
        itemCount: deals.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 15.sp),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  RouteString.detail,
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 265,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ImageWidget(
                          imagePath: ImagePath.deal_of_day,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Padding(
                          padding: EdgeInsets.all(11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 77.sp,
                                height: 30,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 4),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: Text(
                                  '30% off',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.favorite_border_rounded,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Ristorante – Niko Romito',
                    style: TextStyle(
                      color: Color(0xFF101928),
                      fontSize: 18,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Dine and enjoy a 20% Discount',
                    style: TextStyle(
                      color: Color(0xFFA3A7AC),
                      fontSize: 14,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Divider(
                    color: color.appLightGrey,
                    thickness: 1,
                  ),
                  SizedBox(
                    width: 265,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 12.sp,
                          color: color.appLightGrey,
                        ),
                        Expanded(
                          // width: 230,
                          child: Text(
                            "Ristorante L’Olivo at Al Mahewio eijf nnniowefjwl skjdfhsdkfhsdiu siu sif sidf dsif gs i",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0xFFA3A6AC),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        Text(
                          "+5 more",
                          style: TextStyle(
                            color: Color(0xFF58B89C),
                            fontSize: 14,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 11),
                    width: 265,
                    child: Row(
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
                          color: color.appGreen,
                          size: 12,
                        ),
                        Text(
                          '(7 reviews)',
                          style: TextStyle(
                            color: Color(0xFFA3A6AC),
                            fontSize: 12,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Sold: ',
                          style: TextStyle(
                            color: Color(0xFFA3A6AC),
                            fontSize: 12,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '7350',
                          style: TextStyle(
                            color: Color(0xFFA3A6AC),
                            fontSize: 12,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  List deals = [
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
  ];
}
