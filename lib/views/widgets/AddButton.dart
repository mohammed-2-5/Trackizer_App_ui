import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/styles/TextStyles.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key, required this.height, required this.content,
  });
  final double height;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: DottedBorder(
          dashPattern: const [5, 4],
          strokeWidth: 2,
          borderType: BorderType.RRect,
          radius: const Radius.circular(16),
          color:  Color(0xFF4E4E61),
          child: Container(
            height: height,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    content,
                    style: style14
                ),
                Gap(5),
                SvgPicture.asset(
                  "assets/images/Add.svg",
                  width: 16,
                  height: 16,

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}