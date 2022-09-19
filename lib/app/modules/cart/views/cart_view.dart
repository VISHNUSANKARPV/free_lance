import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/core/app_style.dart';
import 'package:free_lance/app/widgets/cart/bottom_nav.dart';
import 'package:free_lance/app/widgets/cart/cart_product.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
          toolbarHeight: 70.h, title: Text('Cart', style: appBarTitleStyle)),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
                padding:  EdgeInsets.only(left: 16, right: 16, top: 16),
                child:  CartProduct());
          }),
      bottomNavigationBar: CartNav.nav(),
    );
  }
}
