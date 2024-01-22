import 'package:flutter/material.dart';

import '../../core/styles/TextStyles.dart';

class LogoInSUBItem extends StatelessWidget {
  const LogoInSUBItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: ShapeDecoration(
        color: const Color(0xFF353542),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Jun',
                style:style10
            ),
            Text(
                '25',
                style:style14.copyWith(color:const  Color(0xFFA2A2B5),)
            )
          ],
        ),
      ),
    );
  }
}
