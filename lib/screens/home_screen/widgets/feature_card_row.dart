import 'package:flutter/material.dart';

import 'components/feature_cards.dart';

class FeatureCardsRow extends StatelessWidget {
  const FeatureCardsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          FeatureCardWidget(
              title: 'Urgent Siege',
              title2: 'Damned Anthem',
              image: 'assets/img4.png'),
          FeatureCardWidget(
              title: 'Urgent Siege',
              title2: 'Damned Anthem',
              image: 'assets/img5.png'),
          FeatureCardWidget(
              title: 'Urgent Siege',
              title2: 'Damned Anthem',
              image: 'assets/img6.png'),
        ],
      ),
    );
  }
}
