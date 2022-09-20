import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/core/app_style.dart';

class FlashSaleProduct extends StatelessWidget {
  const FlashSaleProduct({Key? key}) : super(key: key);

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
                child: Column(children: [
                  Expanded(
                      child: Image.network(
                    'https://media.istockphoto.com/photos/fresh-salmon-steak-with-a-variety-of-seafood-and-herbs-picture-id1156027693?k=20&m=1156027693&s=612x612&w=0&h=u865Gm8DnU-SYO6gTQ74zVmw0krfWG78pNZ0QbSkDkQ=',
                    fit: BoxFit.cover,
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Beef(description)', style: h3Style),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$ 300",
                                        style: h3Style,
                                      ),
                                      Text(
                                        '\$ 350',
                                        style: bitSmall(black: true),
                                      ),
                                    ]),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10.r),
                                    child: SizedBox(
                                        height: 30.h,
                                        width: 145.w,
                                        child: ColoredBox(
                                            color: AppColor.accent,
                                            child: Center(
                                                child: Text("Add",
                                                    style: h1Style(
                                                        black: false)))))),
                              ]),
                        ]),
                  ))
                ]))));
  }
}
