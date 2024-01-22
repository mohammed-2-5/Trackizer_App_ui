
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/styles/TextStyles.dart';
import 'LogoSubItem.dart';

class SubItem extends StatelessWidget {
  const SubItem({
    super.key,
    required this.media, required this.isSelected, required this.itemName, required this.itemImage, required this.itemPrice, required this.onTap,
  });

  final Size media;
  final bool isSelected;
  final String itemName;
  final String itemImage;
  final String itemPrice;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        width: media.width,
        height: media.height*0.08,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF353542)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  isSelected?SvgPicture.asset(itemImage,height: 35,width: 35,fit: BoxFit.contain,): const LogoInSUBItem(),
                  const Gap(15),
                  Text(
                     itemName,
                      style: style14
                  ),
                ],
              ),
              Text(
                  itemPrice,
                  textAlign: TextAlign.right,
                  style: style14
              )
            ],
          ),
        ),

      ),
    );
  }
}
