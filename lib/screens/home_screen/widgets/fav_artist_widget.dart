import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/artist_row.dart';

class FavoriteArtistWidget extends StatelessWidget {
  const FavoriteArtistWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ArtistRowWidget(
          title: 'Add Your Artist',
          titleIcon: Icons.add,
        ),
        SizedBox(height: 10.h),
        const ArtistRowWidget(
          title: 'Taylor Swift',
          titleIcon: Icons.arrow_forward_ios,
        ),
        SizedBox(height: 10.h),
        const ArtistRowWidget(
          title: 'Olivia Rodrigo',
          titleIcon: Icons.arrow_forward_ios_rounded,
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
