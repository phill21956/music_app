import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../home_screen/widgets/feature_card_row.dart';
import '../home_screen/widgets/home_text_widget.dart';
import 'widget/profile_bar_widget.dart';
import 'widget/profile_list_widget.dart';

class ProfilePage extends StatelessWidget {
  static const String id = 'profile_page';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff1D1F3E),
        body: SafeArea(
            child: Column(children: [
          Container(
            height: 250.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 40, 41, 69),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.r),
                  bottomRight: Radius.circular(100.r)),
            ),
            child: const ProfileTopBar(),
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const ProfileListWidget(
                    profileTitle: 'Like',
                    profileImage: 'assets/icon1.png',
                  ),
                  const ProfileListWidget(
                    profileTitle: 'Add playlist',
                    profileImage: 'assets/icon2.png',
                  ),
                  const ProfileListWidget(
                    profileTitle: 'Share',
                    profileImage: 'assets/icon3.png',
                  ),
                  const ProfileListWidget(
                    profileTitle: 'About Recomendation',
                    profileImage: 'assets/icon4.png',
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.r),
                    child: const HomeTextWidget(title: 'Albums'),
                  ),
                  const FeatureCardsRow(),
                ],
              ),
            ),
          ),
        ])));
  }
}
