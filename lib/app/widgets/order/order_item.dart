import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/core/app_style.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key, required this.status}) : super(key: key);
  final String status;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 190.h,
        width: double.maxFinite,
        child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
              side: const BorderSide(),
            ),
            child: Column(children: [
              DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      border: const Border(bottom: BorderSide())),
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Order ID: 65465841',
                                          style: h2Styleblack),
                                      SizedBox(height: 5.h),
                                      Text('Palazhi,Kozhikod',
                                          style: h5StyleLight),
                                    ])
                              ]),
                              TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder()),
                                    backgroundColor: MaterialStateProperty.all(
                                      status == 'Accept'
                                          ? const Color.fromARGB(
                                              255, 202, 189, 75)
                                          : status == 'Delivered'
                                              ? AppColor.accent
                                              : Colors.blue.shade500,
                                    ),
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        status,
                                        style: h6StyleLight,
                                      ))),
                            ])),
                  ])),
              Expanded(
                  flex: 2,
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Xxxxxxxxxxxxxx', style: h2Styleblack),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child:
                                      Text('Qty: 1.0 kg', style: h2Styleblack),
                                )
                              ]),
                          SizedBox(height: 8.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Xxxxxxxxxxxxxx', style: h2Styleblack),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Text('Qty: 1.0 kg',
                                        style: h2Styleblack))
                              ])
                        ])),
                    const Divider(
                      color: AppColor.primaryDark,
                      endIndent: 16,
                      indent: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('15th Sep,Sun 09:00 AM - 11.00 AM',
                              style: h2Styleblack),
                          Text('\$ 500', style: h2Styleblack),
                        ],
                      ),
                    ),
                  ]))
            ])));
  }
}
