import 'package:get/get.dart';

import '../modules/account/bindings/account_binding.dart';
import '../modules/account/views/account_view.dart';
import '../modules/alert/bindings/alert_binding.dart';
import '../modules/alert/views/alert_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/flash_sale/bindings/flash_sale_binding.dart';
import '../modules/flash_sale/views/flash_sale_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/order/bindings/order_binding.dart';
import '../modules/order/views/order_view.dart';
import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.root;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.root,
      page: () => RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: _Paths.account,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.alert,
      page: () => const AlertView(),
      binding: AlertBinding(),
    ),
    GetPage(
      name: _Paths.cart,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.order,
      page: () => const OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.flashSale,
      page: () => const FlashSaleView(),
      binding: FlashSaleBinding(),
    ),
  ];
}
