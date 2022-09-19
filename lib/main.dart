import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_theme.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(802.9090909090909, 802.9090909090909),
      builder: (context, child) => GetMaterialApp(
        initialRoute: AppPages.initial,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        getPages: AppPages.routes,
      ),
    ),
  );
}
