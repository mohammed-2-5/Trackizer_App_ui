import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'IndicatorInfo.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({
    super.key,
    required this.media,
  });

  final Size media;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 120.0,
      lineWidth: 10.0,
      animation: true,
      percent: 0.7,
      center: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: IndicatorInfo(media: media),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: const Color(0xFFFF7F37),
      addAutomaticKeepAlive: false,
      arcType: ArcType.FULL,
      arcBackgroundColor: const Color(0x334E4E61),
    );
  }
}
