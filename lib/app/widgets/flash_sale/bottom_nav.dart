import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_style.dart';

class FlashSaleNav {
  static Widget nav() => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
        child: SizedBox(
          height: 50.h,
          child: TextButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: Row(
                children: [
                  Text('1 item | \$ 220', style: h1Style(black: false)),
                  const Spacer(),
                  Text('View Cart', style: h1Style(black: false)),
                ],
              ),
            ),
          ),
        ),
      );
}
