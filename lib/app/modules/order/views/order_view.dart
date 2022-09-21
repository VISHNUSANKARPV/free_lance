import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_style.dart';
import 'package:free_lance/app/widgets/order/order_item.dart';
import 'package:get/get.dart';
import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        title: Text('Orders', style: appBarTitleStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16),
        child: ListView.separated(
          itemCount: statusList.length+1,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) {
            return OrderItem(status: statusList[index],);
            
          },
          itemBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 16);
          },
        ),
      ),
    );
  }
}

final statusList = ['Accept','Shipped','Delivered'];
