import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTopBar extends StatelessWidget {
  const ProfileTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(10.r),
          child: const CircleAvatar(
            radius: 80,
            child: Image(
              image: AssetImage('assets/img2.png'),
            ),
          ),
        ),
        Text(
          'Olivia Rodrigo',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xffFF7A8A),
          ),
        )
      ],
    );
  }
}
