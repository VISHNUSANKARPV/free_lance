import 'dart:developer';

import 'package:free_lance/app/modules/account/views/account_view.dart';
import 'package:free_lance/app/modules/alert/views/alert_view.dart';
import 'package:free_lance/app/modules/cart/views/cart_view.dart';
import 'package:free_lance/app/modules/order/views/order_view.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  // this methord for change screen based on bottom nav
  void switchPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        Get.to(() => const CartView());
        break;
      case 1:
        Get.to(() => const AlertView());
        break;
      case 3:
        Get.to(() => const OrderView());
        break;
      case 4:
        Get.to(() => const AccountView());
        break;
      default:
        log('Invalid Operation !');
    }
  }
}
