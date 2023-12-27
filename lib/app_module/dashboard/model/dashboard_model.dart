// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/utils/common_widgets/string_names.dart';
import 'package:flutter/material.dart';

class DashboardBarData {
  String? icon;
  String? title;
  VoidCallback? onTap;
  DashboardBarData({
    this.icon,
    this.title,
    this.onTap,
  });
}

List<DashboardBarData> dashboardBarDataList = [
  DashboardBarData(
    icon: ImagePath.home,
    title: StringNames.home,
    onTap: () {},
  ),
  DashboardBarData(
    icon: ImagePath.category,
    title: StringNames.categories,
    onTap: () {},
  ),
  DashboardBarData(
    icon: ImagePath.location,
    title: StringNames.locations,
    onTap: () {},
  ),
  DashboardBarData(
    icon: ImagePath.profile,
    title: StringNames.profile,
    onTap: () {},
  ),
];
