import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DottedLine(
      direction: Axis.horizontal,
      lineLength: double.infinity,
      lineThickness: 3,
      dashLength: 8.0,
      dashColor:Color(0xFF131318),

      dashRadius: 0.0,
      dashGapLength: 6.0,
      dashGapColor: Colors.transparent,

      dashGapRadius: 0.0,
    );
  }
}
