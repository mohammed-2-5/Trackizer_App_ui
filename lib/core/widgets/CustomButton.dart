import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.media, required this.shapeColor, required this.borderColor, required this.buttonWidget, this.boxShadow, required this.onTap, this.height,
  });
  final VoidCallback onTap;
  final Size media;
final Color shapeColor;
final Color borderColor;
final Widget buttonWidget;
final List<BoxShadow>? boxShadow;
final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: media.width * 0.82,
        height:height?? media.height * 0.065,
        padding: const EdgeInsets.symmetric(
            horizontal: 12, vertical: 14),
        decoration: ShapeDecoration(
          color:
          shapeColor,
          shadows:boxShadow ??[],
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: borderColor,
            ),

            borderRadius: BorderRadius.circular(999),
          ),
        ),
        child: Center(
            child: buttonWidget),
      ),
    );
  }
}
