import 'package:deelly/app_module/dashboard/controller/dashboard_controller.dart';
import 'package:deelly/app_module/dashboard/view/components/dashboard_components.dart';
import 'package:deelly/app_module/detail_page/view/components/address_bar.dart';
import 'package:deelly/app_module/detail_page/view/components/deal_detail.dart';
import 'package:deelly/app_module/detail_page/view/components/detail_page_appbar.dart';
import 'package:deelly/app_module/detail_page/view/components/reservation_box.dart';
import 'package:deelly/app_module/detail_page/view/components/top_image_stack.dart';
import 'package:deelly/app_module/home_screen/view/components/deal_of_day.dart';
import 'package:deelly/utils/common_widgets/border_btn.dart';
import 'package:deelly/utils/common_widgets/gradient_btn.dart';
import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/utils/common_widgets/image_widget.dart';
import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DetailPageView extends StatefulWidget {
  DetailPageView({super.key});

  @override
  State<DetailPageView> createState() => _DetailPageViewState();
}

class _DetailPageViewState extends State<DetailPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageWidget(
            imagePath: ImagePath.cover,
            height: 346,
            width: double.infinity,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DetailPageAppbar(),
              SizedBox(
                height: 100,
              ),
              TopImageStack(),
              Expanded(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DealDetail(),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Ristorante - Niko Romito",
                            style: TextStyle().detailTitleStyle,
                          ),
                        ),
                        AddressBar(),
                        ReservationBox(),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 23, 15, 0),
                          child: Row(
                            children: [
                              Text(
                                'Share:',
                                style: TextStyle(
                                  color: Color(0xFF101928),
                                  fontSize: 14,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                child: Icon(
                                  FontAwesome5.facebook,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                width: 38.16,
                                height: 38.16,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF1877F2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Icon(
                                  FontAwesome5.twitter,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                width: 38.16,
                                height: 38.16,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF1DA1F2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Icon(
                                  FontAwesome5.whatsapp,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                width: 38.16,
                                height: 38.16,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF25D366),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                width: 38.16,
                                height: 38.16,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF013D29),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Divider(
                            color: color.appLightGrey,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 11),
                          child: Text(
                            'Description',
                            style: TextStyle(
                              color: Color(0xFF101928),
                              fontSize: 24,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 9),
                          child: Text(
                            'Highlights',
                            style: TextStyle(
                              color: Color(0xFF101928),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 9),
                          child: Text(
                            'patrons can choose from a selection of international cuisine for lunch or dinner complete with soft drink or house beverages',
                            style: TextStyle(
                              color: Color(0xFFA3A6AC),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 9),
                          child: Text(
                            'About These Deals',
                            style: TextStyle(
                              color: Color(0xFF101928),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 9),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'type of cuisine:',
                                  style: TextStyle(
                                    color: Color(0xFF101928),
                                    fontSize: 14,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' internationals\n multiple starters mains and desserts\nfree flowing soft drink over two house beverages\nvalid 7 days a week',
                                  style: TextStyle(
                                    color: Color(0xFFA3A6AC),
                                    fontSize: 14,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Divider(
                            color: color.appLightGrey,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 18),
                          child: Text(
                            'Terms & Conditions',
                            style: TextStyle(
                              color: Color(0xFF101928),
                              fontSize: 24,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 9),
                          child: Text(
                            'Fine Print',
                            style: TextStyle(
                              color: Color(0xFF101928),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 20),
                          child: Text(
                            'Child option valid for ages4 to 12 years. valid for dine-in only.',
                            style: TextStyle(
                              color: Color(0xFFA3A6AC),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 6),
                          child: Text(
                            'Valid days and hours',
                            style: TextStyle(
                              color: Color(0xFF101928),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 15, right: 15, bottom: 7),
                          child: Text(
                            'Seven days a week, known 3:00 PM and 6:30 PM. 10:30 PM. Prior booking/cancelation (subject to available) at least 4 hours in advance. Expires 3 month after purchase. Limit 4 per person(s), may buy 3 additional as gift(s).',
                            style: TextStyle(
                              color: Color(0xFFA3A6AC),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Divider(
                            color: color.appLightGrey,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Text(
                            'Store Details',
                            style: TextStyle(
                              color: Color(0xFF101928),
                              fontSize: 24,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Text(
                            'TJ Foods Corniche',
                            style: TextStyle(
                              color: Color(0xFF101928),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color(0xFFA3A6AC),
                                size: 20,
                              ),
                              Text(
                                'Abu Dhabi, United Arab Emirates',
                                style: TextStyle(
                                  color: Color(0xFFA3A6AC),
                                  fontSize: 14,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 13),
                          child: Text(
                            '+525201212',
                            style: TextStyle(
                              color: Color(0xFF101928),
                              fontSize: 14,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Divider(
                            color: color.appLightGrey,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 15, right: 15, bottom: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Reviews',
                                style: TextStyle(
                                  color: Color(0xFF101928),
                                  fontSize: 24,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Container(
                                width: 110,
                                height: 30,
                                alignment: Alignment.center,
                                decoration: ShapeDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(1.00, -0.06),
                                    end: Alignment(-1, 0.06),
                                    colors: [
                                      Color(0xFF5ACD84),
                                      Color(0xFF56ADFF)
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  '+ Write Review',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 5, 15, 27),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: color.appLightGreen,
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: List.generate(
                                  5,
                                  (index) {
                                    return Row(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 2, 2),
                                          child: Text(
                                            "${5 - index}",
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF333333),
                                              fontSize: 14,
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.star_rounded,
                                          size: 15,
                                          color: Color(0xFFE4A70A),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        SizedBox(
                                          width: 150,
                                          height: 6,
                                          child: LinearProgressIndicator(
                                            color: color.appGreen,
                                            backgroundColor: Colors.transparent,
                                            value: (5 - index) / 5,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '4.5',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 40,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: -0.40,
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) {
                                        return Icon(
                                          Icons.star_rounded,
                                          size: 15,
                                          color: index == 4
                                              ? Color(0xFFDDDDDD)
                                              : Color(0xFFE4A70A),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '52 Reviews',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 14,
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                      letterSpacing: -0.14,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: List.generate(
                              3,
                              (index) {
                                return Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 38,
                                          height: 38,
                                          margin: EdgeInsets.only(right: 8),
                                          decoration: ShapeDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                ImagePath.cover,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Courtney Henry',
                                              style: TextStyle(
                                                color: Color(0xFF101928),
                                                fontSize: 16,
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                                letterSpacing: -0.16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                Row(
                                                  children: List.generate(
                                                    5,
                                                    (i) {
                                                      return Icon(
                                                        Icons.star_rounded,
                                                        size: 15,
                                                        color: index == 5
                                                            ? Color(0xFFDDDDDD)
                                                            : Color(0xFFE4A70A),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Text(
                                                  '2 mins ago',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: Color(0xFFA3A7AC),
                                                    fontSize: 14,
                                                    fontFamily: 'Outfit',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                    letterSpacing: -0.14,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.more_vert_rounded,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      'Consequat velit qui adipisicing sunt do rependerit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua',
                                      style: TextStyle(
                                        color: Color(0xFFA3A6AC),
                                        fontSize: 14,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      child: Divider(
                                        color: color.appLightGrey,
                                        thickness: 1,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Text(
                            'Suggested Deals',
                            style: TextStyle(
                              color: Color(0xFF101928),
                              fontSize: 22,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        DealOfDay(),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15.sp, 44, 15.sp, 26.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BorderBtn(
                                width: Get.width / 2.5,
                                text: "Add to Cart",
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 15.sp,
                              ),
                              GradientButton(
                                width: Get.width / 2.5,
                                text: "Buy Now",
                                onPressed: () {},
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  DetailPage({super.key});
  final dashboardController = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          return Column(
            children: [
              Expanded(
                child: mainViewOfWidgets(
                  controller: dashboardController,
                  screen: DetailPageView(),
                ),
              ),
              bottomBarWidget(
                controller: dashboardController,
              )
            ],
          );
        },
      ),
    );
  }
}
