import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'BudgetCardInfo.dart';

class BudgetCard extends StatelessWidget {
  const BudgetCard({
    super.key,
    required this.logoPath,
    required this.category,
    required this.amountLeft,
    required this.spentAmount,
    required this.totalAmount,
    required this.progressValue, required this.color,
  });

  final String logoPath;
  final String category;
  final String amountLeft;
  final String spentAmount;
  final String totalAmount;
  final double progressValue;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 84,
      decoration: ShapeDecoration(
        color: const Color(0x334E4E61),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x26CFCFFC)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Padding(
        padding:
        const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(logoPath, height: 24, width: 24),
                const Gap(24),
                CardTextInfo(
                  text1: category,
                  text2: amountLeft,
                ),
                const Spacer(),
                CardTextInfo(
                  text1: spentAmount,
                  text2: totalAmount,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: progressValue,
                    borderRadius: BorderRadius.circular(14),
                    minHeight: 3,
                    color: color,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
