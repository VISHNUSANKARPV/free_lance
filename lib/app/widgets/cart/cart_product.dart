import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/core/app_style.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.r),
      child: Card(
        shadowColor: AppColor.primaryDark,
        color: AppColor.primaryLight,
        elevation: 15,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: SizedBox(
                width: double.maxFinite,
                height: 130.h,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Bonless fillet(1.0kg)', style: h2Styleblack),
                      Text('1 Pack', style: subtitleLight),
                      Text('\$ 300', style: h2Styleaccent),
                      Row(
                        children: [
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove,
                                color: AppColor.accent,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 13, left: 10),
                            child: Text('2.0 kg', style: bitSmall(black: true)),
                          ),
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: AppColor.accent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: Image.network(
                'https://media.istockphoto.com/photos/fresh-salmon-steak-with-a-variety-of-seafood-and-herbs-picture-id1156027693?k=20&m=1156027693&s=612x612&w=0&h=u865Gm8DnU-SYO6gTQ74zVmw0krfWG78pNZ0QbSkDkQ=',
                fit: BoxFit.cover,
                height: 130.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
