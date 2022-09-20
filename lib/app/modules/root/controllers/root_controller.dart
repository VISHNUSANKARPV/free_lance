import 'package:free_lance/app/routes/app_pages.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  //Initial index for bottom nav
  RxInt currentBottomNavItemIndex = 2.obs;
  // this methord for change screen based on bottom nav
  void switchPage(int currentIndex) {
    if(currentIndex == 0){
      Get.toNamed(Routes.cart);
      return;
    }
    currentBottomNavItemIndex.value = currentIndex;
  }
}
