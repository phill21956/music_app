import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCardBox extends StatelessWidget {
  const HomeCardBox({required this.title, required this.image, Key? key})
      : super(key: key);
  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20.r, 10.r, 10.r, 10.r),
          child: Container(
            width: 330.w,
            height: 199.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
            // child: Image.asset(image),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20.r),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
