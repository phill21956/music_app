import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArtistRowWidget extends StatelessWidget {
  const ArtistRowWidget({
    required this.title,
    required this.titleIcon,
    Key? key,
  }) : super(key: key);
  final String title;
  final IconData titleIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.r),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 48, 52, 81),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.r, 5.r, 20.r, 5.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xffFF7A8A),
              ),
            ),
            Icon(
              titleIcon,
              color: const Color(0xffFF7A8A),
              //size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}
