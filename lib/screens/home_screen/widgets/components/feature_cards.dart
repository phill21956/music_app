import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureCardWidget extends StatelessWidget {
  const FeatureCardWidget(
      {required this.title,
      required this.title2,
      required this.image,
      Key? key})
      : super(key: key);
  final String title, title2, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.r),
          child: Container(
            width: 120.w,
            height: 120.w,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )),
            // child: Image.network(mov.posterPath),
          ),
        ),
        //SizedBox(height: 5.h),
        Text(
          title,
          style: TextStyle(
              fontSize: 14.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        // SizedBox(height: 5.h),
        Text(
          title2,
          style: TextStyle(color: Colors.grey, fontSize: 10.sp),
        ),
      ],
    );
  }
}
