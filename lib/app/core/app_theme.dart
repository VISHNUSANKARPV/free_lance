import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/core/app_style.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.primaryLight,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColor.accent),
    appBarTheme:  AppBarTheme(
        backgroundColor: AppColor.accent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: h2Style),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(AppColor.accent),
    )),
    hintColor: Colors.black45,
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(borderSide: BorderSide.none),
      enabledBorder: textFieldStyle,
      focusedBorder: textFieldStyle,
      filled: true,
      contentPadding:  EdgeInsets.all(20.r),
      fillColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 20,
      selectedLabelStyle: selectedNavText,
      unselectedLabelStyle: unSelectedNavText,
      unselectedItemColor: AppColor.accent,
      selectedItemColor: AppColor.accent,
    ),
    textTheme:  TextTheme(
      headline1: h1Style(black: false),
      headline2: h2Style,
      headline3: h3Style,
      headline4: h4StyleLight,
      headline5: h5StyleLight,
      bodyText1: bodyTextLight,
      subtitle1: subtitleLight,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColor.accent),
        textStyle: MaterialStateProperty.all(h1Style(black: false)),
        shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r))),
        shadowColor: MaterialStateProperty.all(Colors.black),
        elevation: MaterialStateProperty.all(10.r)
      )
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
