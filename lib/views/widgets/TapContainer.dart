import 'package:flutter/material.dart';

import '../../core/styles/TextStyles.dart';

class TapContainer extends StatelessWidget {
   const TapContainer({
    super.key, required this.content, required this.color, required this.borderColor, required this.textColor, required this.onTap

  });

  final String content;
  final Color color;
  final Color borderColor;
   final Color textColor;
   final void Function() onTap;
   @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    var width =media.width*0.44;
    var height =media.height*0.045;
    return GestureDetector(
      onTap:onTap,
      child: Container(
          width:  width,
          height: height,
          decoration: ShapeDecoration(
            color:color,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: borderColor),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child:Center(
            child: Text(
                content,
                textAlign: TextAlign.center,
                style: style12.copyWith(fontWeight: FontWeight.w600,color: textColor)
            ),
          )
      ),
    );
  }
}
