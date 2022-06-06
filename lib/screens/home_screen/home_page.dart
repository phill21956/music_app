import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/components/search_widget.dart';
import 'widgets/fav_artist_widget.dart';
import 'widgets/feature_card_row.dart';
import 'widgets/home_card_row.dart';
import 'widgets/home_text_widget.dart';


class HomePage extends StatelessWidget {
  static const String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D1F3E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.h),
              const SearchWidget(),
              SizedBox(height: 15.h),
              const HomeCardRow(),
              SizedBox(height: 15.h),
              Padding(
                  padding: EdgeInsets.only(left: 20.r),
                  child: const HomeTextWidget(title: 'New Songs')),
              SizedBox(height: 5.h),
              const FeatureCardsRow(),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.only(left: 25.r),
                child: const HomeTextWidget(title: 'Favourite Artist'),
              ),
              SizedBox(height: 10.h),
              const FavoriteArtistWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
