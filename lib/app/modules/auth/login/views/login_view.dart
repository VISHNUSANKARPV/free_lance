import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../../../core/app_style.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 275.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/baked-dorado-fish-vegetables-black-stone-plate-top-view-free-space-your-text-baked-dorado-fish-vegetables-182821526.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      bottomRight: Radius.circular(200))),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Introducing a",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text.rich(
              TextSpan(
                text: "c",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "FRESH",
                    style: TextStyle(
                      color: AppColor.accent,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " culture",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100.w,
                  child: const Divider(
                    thickness: 1,
                    color: AppColor.primaryDark,
                  ),
                ),
                const Text('  Login or Signup  '),
                SizedBox(
                  width: 100.w,
                  child:
                      const Divider(thickness: 1, color: AppColor.primaryDark),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColor.accent, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColor.accent, width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1)),
                ),
                validator: (val) {
                  if (val!.length == 10) {
                    return "Password must be at least 6 characters";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.otp);
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: 4.h, bottom: 4.h, left: 245.w, right: 245.w),
                child: Text(
                  'Continue',
                  style: h1Style(black: false),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
