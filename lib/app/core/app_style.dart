import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';

final appBarTitleStyle = TextStyle(
    fontSize: 55.sp, fontWeight: FontWeight.normal, color: Colors.white);

h1Style({required bool black}) => TextStyle(
    fontSize: 35.sp,
    fontWeight: FontWeight.bold,
    color: black ? Colors.black : Colors.white);

final h2Style = TextStyle(
    fontSize: 29.sp, fontWeight: FontWeight.bold, color: Colors.black);

final h2Styleblack = TextStyle(
    fontSize: 30.sp, fontWeight: FontWeight.w400, color: Colors.black);

final h2Styleaccent = TextStyle(
    fontSize: 30.sp, fontWeight: FontWeight.bold, color: AppColor.accent);

final h3Style = TextStyle(
    fontSize: 28.sp, fontWeight: FontWeight.w500, color: Colors.black);

final h4StyleLight = TextStyle(
    fontSize: 25.sp, fontWeight: FontWeight.w500, color: Colors.black);

final h5StyleLight = TextStyle(
    fontSize: 27.sp, fontWeight: FontWeight.w400, color: Colors.black);

final h6StyleLight = TextStyle(
    fontSize: 25.sp, fontWeight: FontWeight.w500, color: Colors.white);

final bodyTextLight = TextStyle(
    fontSize: 23.sp, fontWeight: FontWeight.w600, color: Colors.black45);

final subtitleLight = TextStyle(
    fontSize: 22.sp, fontWeight: FontWeight.normal, color: Colors.black);

bitSmall({required bool black}) => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: black ? const Color.fromARGB(139, 0, 0, 0) : Colors.white);
final small = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: const Color.fromARGB(139, 0, 0, 0));

final selectedNavText = TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold);

final unSelectedNavText =
    TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w400);

final textFieldStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20.r),
  borderSide: const BorderSide(color: Colors.transparent),
);
