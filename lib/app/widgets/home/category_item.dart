import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_style.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        PhysicalModel(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
          elevation: 5,
          shadowColor: Colors.black,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.network(
              'https://media.istockphoto.com/photos/fresh-salmon-steak-with-a-variety-of-seafood-and-herbs-picture-id1156027693?k=20&m=1156027693&s=612x612&w=0&h=u865Gm8DnU-SYO6gTQ74zVmw0krfWG78pNZ0QbSkDkQ=',
              height: 80.h,
              width: size.width * 0.2,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          'Fresh Fish',
          style: h2Style,
        ),
      ],
    );
  }
}
