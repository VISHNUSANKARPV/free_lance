import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/core/app_style.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
        child: AspectRatio(
            aspectRatio: 2 / 3,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Column(
                  children: [
                    Expanded(
                        child: Image.network(
                      'https://media.istockphoto.com/photos/fresh-salmon-steak-with-a-variety-of-seafood-and-herbs-picture-id1156027693?k=20&m=1156027693&s=612x612&w=0&h=u865Gm8DnU-SYO6gTQ74zVmw0krfWG78pNZ0QbSkDkQ=',
                      fit: BoxFit.cover,
                    )),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          const Text('Beef'),
                          SizedBox(height: 3.h),
                          Text(
                            '1.0kg',
                            style: small,
                          ),
                        ]),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: SizedBox(
                            height: 22.h,
                            width: 125.w,
                            child: ColoredBox(
                                color: AppColor.accent,
                                child: Center(
                                    child:
                                        Text("\$ 300", style: h6StyleLight))),
                          ),
                        ),
                        Text('\$ 330', style: bitSmall(black: true)),
                      ],
                    ))
                  ],
                ))));
  }
}
