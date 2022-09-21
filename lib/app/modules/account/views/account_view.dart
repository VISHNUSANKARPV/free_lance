import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/core/app_style.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
   AccountView({Key? key}) : super(key: key);

 final List<IconData> icons = [
  Icons.wallet_outlined,
  Icons.location_on_outlined,
  Icons.notifications_on_outlined,
  Icons.call,
  Icons.logout
 ];

 final List<String> title = [
  "Wallet",
  "Manage Address",
  "Notifications",
  "Contact Us",
  "Logout"
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        title: Text('Account', style: appBarTitleStyle),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.r),
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.accent.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 20.r),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.primaryLight,
                      radius: 90.r,
                      child: Icon(
                        Icons.person,
                        color: AppColor.primaryDark,
                        size: 100.sp,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Prabin",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 38.sp,
                              color: AppColor.primaryDark),
                        ),
                        SizedBox(
                          height: 15.w,
                        ),
                        Text(
                          "xxxxxxxxxxxxx@gmail.com",
                          style: TextStyle(
                              fontSize: 30.sp, color: AppColor.primaryDark),
                        ),
                        SizedBox(
                          height: 15.w,
                        ),
                        Text(
                          "+91 9061 XXXXXX",
                          style: TextStyle(
                              fontSize: 30.sp, color: AppColor.primaryDark),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    color: AppColor.primaryDark,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: AppColor.primaryDark,
                      radius: 50.r,
                      child: Icon(icons[index],color: AppColor.primaryLight,),
                    ),
                    title: Text(
                      title[index],
                      style:
                          TextStyle(color: AppColor.primaryDark, fontSize: 35.sp),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.primaryDark,
                      size: 50.sp,
                    ),
                  );
                },
              ),
              const Divider(
                    color: AppColor.primaryDark,
                  ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                  onPressed: () {},
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: 4.h, bottom: 4.h, left: 20.w, right: 20.w),
                      child: Text('Terms & Conditions',
                          style: h1Style(black: false)))),
                      TextButton(
                  onPressed: () {},
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: 4.h, bottom: 4.h, left: 5.w, right: 5.w),
                      child: Text('Rate App',
                          style: h1Style(black: false)))),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                  onPressed: () {},
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: 4.h, bottom: 4.h, left: 30.w, right: 30.w),
                      child: Text('Privacy Policy',
                          style: h1Style(black: false)))),
                      TextButton(
                  onPressed: () {},
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: 4.h, bottom: 4.h, left: 20.w, right: 20.w),
                      child: Text('About',
                          style: h1Style(black: false)))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              const Text.rich(
                TextSpan(
                  text: "Powered by ",

                children: [
                  TextSpan(
                   text: "Tegrand",
                   style: TextStyle(
                    color: Colors.blue
                   )
                  )
                ]
                ),
                
              ),
              SizedBox(
                height: 20.h,
              )                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
            ],
          ),
        ),
      ),
    );
  }
}
