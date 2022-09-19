import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_style.dart';

class HomeAppBar {
  static PreferredSizeWidget appBar() => AppBar(
        toolbarHeight: 120.h,
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  'CFRESH',
                  style: h1Style(black: false),
                ),
                const Spacer(),
                Icon(
                  Icons.location_on_outlined,
                  size: 45.sp,
                  color: const Color.fromARGB(255, 238, 234, 234),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Palazhi",
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 238, 234, 234),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 45.sp,
                          color: const Color.fromARGB(255, 238, 234, 234),
                        ),
                      ],
                    ),
                    Text("Kozhikode", style: bitSmall(black: false)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            PhysicalModel(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.white,
              elevation: 18,
              shadowColor: Colors.black,
              child: SizedBox(
                height: 33.h,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, color: Colors.black38),
                    hintText: "Search items",
                    hintStyle: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black38),
                    contentPadding: EdgeInsets.symmetric(vertical: 13.r),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
