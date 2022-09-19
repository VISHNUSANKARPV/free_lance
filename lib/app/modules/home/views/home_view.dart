import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/core/app_style.dart';
import 'package:free_lance/app/widgets/widgets.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: HomeAppBar.appBar(),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.all(16),
                child: PhysicalModel(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.black,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: ImageSlideshow(
                        width: double.infinity,
                        height: 150.h,
                        indicatorColor: Colors.white,
                        indicatorBackgroundColor:
                            const Color.fromARGB(255, 164, 164, 164),
                        isLoop: true,
                        children: image
                            .map((e) => Image.network(
                                  e,
                                  width: double.maxFinite,
                                  fit: BoxFit.cover,
                                ))
                            .toList()),
                  ),
                )),
            SizedBox(
              height: 110.h,
              child: ListView.separated(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) {
                    return const CategoryItem();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: size.width * 0.04,
                    );
                  }),
            ),
            Padding(
                padding: const EdgeInsets.all(16),
                child: Row(children: [
                  Text('Flash sale', style: h1Style(black: true)),
                  SizedBox(width: 20.w),
                  PhysicalModel(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.red,
                      elevation: 5,
                      shadowColor: Colors.black,
                      child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text("03h 17m 46s", style: h6StyleLight))),
                  const Spacer(),
                  Text('View All', style: h5StyleLight),
                  SizedBox(width: 10.w),
                  CircleAvatar(
                      radius: 20.r,
                      backgroundColor: AppColor.accent,
                      child: Icon(Icons.arrow_forward_ios_outlined,
                          color: AppColor.primaryLight, size: 23.sp))
                ])),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 2 / 3),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return const ProductItem();
                    })),
            Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Today\'s Deal', style: h1Style(black: true))),
            SizedBox(
                height: 165.h,
                child: ListView.separated(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) {
                      return const Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: ProductItem());
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(width: size.width * 0.05);
                    })),
            const SizedBox(height: 16),
          ])),
    );
  }
}

final image = [
  'https://media.istockphoto.com/photos/fresh-salmon-steak-with-a-variety-of-seafood-and-herbs-picture-id1156027693?k=20&m=1156027693&s=612x612&w=0&h=u865Gm8DnU-SYO6gTQ74zVmw0krfWG78pNZ0QbSkDkQ=',
  'https://media.istockphoto.com/photos/seafood-on-ice-picture-id520490716?k=20&m=520490716&s=612x612&w=0&h=w9GcZoTDCrrFSxNb-DJop_O4TMxMAcKOE2GG2-EItmQ=',
  'https://media.istockphoto.com/photos/seafood-on-ice-picture-id478663945?k=20&m=478663945&s=612x612&w=0&h=WGkdNhFec1fYpSGYB2jFvYRqLryQL4VwVdpq4VhtYqc=',
];
