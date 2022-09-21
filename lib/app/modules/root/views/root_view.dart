import 'package:flutter/material.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/modules/account/views/account_view.dart';
import 'package:free_lance/app/modules/alert/views/alert_view.dart';
import 'package:free_lance/app/modules/cart/views/cart_view.dart';
import 'package:free_lance/app/modules/home/views/home_view.dart';
import 'package:free_lance/app/modules/order/views/order_view.dart';
import 'package:get/get.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  RootView({Key? key}) : super(key: key);
  final List<Widget> screen = [
    const CartView(),
    const AlertView(),
    const HomeView(),
    const OrderView(),
     AccountView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryLight,
      body: Obx(
        () => screen[controller.currentBottomNavItemIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentBottomNavItemIndex.value,
          selectedFontSize: 14,
          onTap: (value) => controller.switchPage(value),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                activeIcon: Icon(Icons.shopping_bag),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active_outlined),
                activeIcon: Icon(Icons.notifications_active),
                label: 'Alert'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long_outlined),
                activeIcon: Icon(Icons.receipt_long),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
                activeIcon: Icon(Icons.person),
                label: 'Account'),
          ],
        ),
      ),
    );
  }
}
