import 'package:deelly/app_module/home_screen/view/components/deal_of_day.dart';
import 'package:deelly/app_module/home_screen/view/components/partners.dart';
import 'package:deelly/app_module/home_screen/view/components/slider.dart';
import 'package:deelly/app_module/home_screen/view/components/upcoming_deals.dart';
import 'package:deelly/app_module/home_screen/view/components/home_appbar.dart';
import 'package:deelly/app_module/home_screen/view/components/home_categories.dart';
import 'package:deelly/app_module/home_screen/view/components/home_discounts.dart';
import 'package:deelly/app_module/home_screen/view/components/home_searchbar.dart';
import 'package:deelly/utils/common_widgets/string_names.dart';
import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.appLightGreen,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeAppBar(),
          HomeSearchBar(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 27, left: 19, bottom: 10),
                      child: Text(
                        StringNames.filter,
                        style: TextStyle().homeTitle,
                      ),
                    ),
                    HomeCategories(),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Divider(
                        color: color.appLightGrey,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19, bottom: 10),
                      child: Text(
                        StringNames.filter_by_discount,
                        style: TextStyle().homeTitle,
                      ),
                    ),
                    HomeDiscount(),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Divider(
                        color: color.appLightGrey,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19, bottom: 10),
                      child: Text(
                        StringNames.upcomming,
                        style: TextStyle().homeTitle,
                      ),
                    ),
                    Deals(),
                    SizedBox(height: 34),
                    SliderMenu(),
                    SizedBox(height: 34),
                    Padding(
                      padding: EdgeInsets.only(left: 19, bottom: 15),
                      child: Text(
                        "Deal of the day",
                        style: TextStyle().homeTitle,
                      ),
                    ),
                    DealOfDay(),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.only(left: 19, bottom: 15),
                      child: Text(
                        "Our Partners",
                        style: TextStyle().homeTitle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 19),
                      child: Partners(),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
