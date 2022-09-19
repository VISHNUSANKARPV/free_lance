import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_style.dart';

import 'package:get/get.dart';

import '../controllers/alert_controller.dart';

class AlertView extends GetView<AlertController> {
  const AlertView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        title: Text('Alerts',style: appBarTitleStyle),
        ),
      );
  }
}
