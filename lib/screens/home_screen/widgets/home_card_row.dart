import 'package:flutter/material.dart';

import 'components/card_box_widget.dart';

class HomeCardRow extends StatelessWidget {
  const HomeCardRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          HomeCardBox(title: ' Featured Song', image: 'assets/img1.png'),
          HomeCardBox(title: ' Featured Song', image: 'assets/img3.png'),
        ],
      ),
    );
  }
}
