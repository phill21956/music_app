import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({
    required this.profileTitle,
    required this.profileImage,
    Key? key,
  }) : super(key: key);
  final String profileTitle, profileImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.r, 20.r, 20.r, 10.r),
      child: Row(
        children: [
          Image.asset(
            profileImage,
          ),
          SizedBox(width: 10.w),
          Text(
            profileTitle,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
