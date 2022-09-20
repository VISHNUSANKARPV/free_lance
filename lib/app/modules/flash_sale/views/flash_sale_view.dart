import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_style.dart';
import 'package:free_lance/app/widgets/widgets.dart';
import 'package:get/get.dart';
import '../controllers/flash_sale_controller.dart';

class FlashSaleView extends GetView<FlashSaleController> {
  const FlashSaleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
          toolbarHeight: 70.h,
          title: Text('Flash Sale', style: appBarTitleStyle)),
      body: Padding(
          padding: const EdgeInsets.all(32),
          child: GridView.builder(
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 32,
                  mainAxisSpacing: 32,
                  childAspectRatio: 2/ 3),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return const FlashSaleProduct();
              })),
      bottomNavigationBar: FlashSaleNav.nav(),
    );
  }
}
