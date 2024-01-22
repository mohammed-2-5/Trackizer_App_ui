import 'package:flutter/material.dart';

import 'dashed_line.dart';

class SubInfoShapeContainer extends StatelessWidget
{
  const SubInfoShapeContainer({
    super.key,
    required this.media,
  });

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: media.height*0.40,
          decoration: const ShapeDecoration(
            color: Color(0xFF353542),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
          ),
          child:const Align(
              alignment: Alignment.bottomCenter,
              child: DashedLine()),
        ),

        Container(
          width: double.infinity,
          height: media.height*0.51,
          decoration: const ShapeDecoration(
            color: Color(0xFF282833),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),                  ),
          ),
        )
      ],
    );
  }
}
