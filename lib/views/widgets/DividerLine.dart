import 'package:flutter/material.dart';



class FixedSizeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate the width for each segment and the spacing
    int itemCount = 4; // Number of segments
    double spacing = 4.0; // Spacing between segments
    double totalSpacing = spacing * (itemCount - 1); // Total spacing
    double segmentWidth = (screenWidth - totalSpacing) / itemCount; // Width for each segment

    // Floor the segment width to avoid rounding errors
    segmentWidth = segmentWidth.floorToDouble();

    return SizedBox(
      height: 8,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: List<Widget>.generate(itemCount * 2 - 1, (index) {
          // Return a segment or a spacing based on the index
          if (index % 2 == 0) {
            return Flexible(
              child: Container(
                width: segmentWidth,
                decoration: BoxDecoration(color: Color(0xFF353542)),
              ),
            );
          } else {
            return SizedBox(width: spacing);
          }
        }),
      ),
    );
  }
}
