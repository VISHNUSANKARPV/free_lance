import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_style.dart';

class CartNav {
  static Widget nav() => SizedBox(
        width: double.maxFinite,
        height: 100.h,
        child: Column(
          children: [
            const Text('3 Items | \$1050.00'),
            SizedBox(height: 8.h),
            TextButton(
                onPressed: () {},
                child: Padding(
                    padding: EdgeInsets.only(
                        top: 4.h, bottom: 4.h, left: 180.w, right: 180.w),
                    child: Text('Proceed to checkout',
                        style: h1Style(black: false)))),
          ],
        ),
      );
}
