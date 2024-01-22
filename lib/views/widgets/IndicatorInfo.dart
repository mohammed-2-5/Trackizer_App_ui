import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/styles/TextStyles.dart';
import '../../core/widgets/Logo.dart';
import '../settings.dart';

class IndicatorInfo extends StatelessWidget {
  const IndicatorInfo({super.key, required this.media});



  final Size media;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: media.width * 0.25,
          child: Logo(media: media),
        ),
        const Gap(5),
        Text('\$1,235',
            textAlign: TextAlign.center, style: style40),
        Text('This month bills',
            textAlign: TextAlign.center,
            style: style12.copyWith(
                color: const Color(0xFF83839C),
                fontWeight: FontWeight.w600)),
        Container(
          width: 125,
          height: 32,
          padding: const EdgeInsets.symmetric(
              horizontal: 12, vertical: 8),
          decoration: ShapeDecoration(

            color: Colors.white
                .withOpacity(0.10000000149011612),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Colors.white
                    .withOpacity(0.15000000596046448),
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child:  GestureDetector(
            onTap: () {
              print("IconButton pressed"); // Add this line for debugging
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
            child: Center(
              child: Text(
                  'See your Budget ',
                  textAlign: TextAlign.center,
                  style:style12.copyWith(color: Colors.white,fontWeight: FontWeight.w600,height: 0.9)
              ),
            ),
          ),
        )
      ],
    );
  }
}
