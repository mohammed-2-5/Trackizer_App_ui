import 'package:flutter/material.dart';

import '../../core/styles/TextStyles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required this.media, required this.onTap, required this.title, this.width,
  });
final String title;
  final Size media;
  final VoidCallback onTap;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        width: width??media.width*0.82,
        height:media.height*0.065,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: ShapeDecoration(
          gradient: RadialGradient(
            center: const Alignment(1, 0.25),
            radius: 0,
            colors: [Colors.white.withOpacity(0), const Color(0xFFFF7F37)],
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(999),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x7FFF7966),
              blurRadius: 25,
              offset: Offset(0, 8),
              spreadRadius: 0,
            )
          ],
        ),
        child:Center(
          child: Text(
            title,
            style: style14,
          ),
        ),
      ),
    );
  }
}
