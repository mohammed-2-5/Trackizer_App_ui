import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:trackizer_ui/core/styles/Colors.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';
import 'package:trackizer_ui/core/widgets/SettingButton.dart';
import 'package:trackizer_ui/views/widgets/BudgetCard.dart';

import '../core/widgets/CustomArch180.dart';
import 'widgets/AddButton.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left:  media.width * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center align the row
                  children: [
                    Expanded( // Make the text take the available space
                      child:
                      Text(
                          'Spending & Budgets',
                          textAlign: TextAlign.center,
                          style:style16
                      )
                    ),
                  const   SettingsButton(), // Settings icon on the right
                  ],
                ),
              ),
              Stack(alignment: Alignment.bottomCenter, children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  width: media.width * 0.5,
                  height: media.width * 0.30,
                  child: CustomPaint(
                    painter: CustomArc180Painter(
                      drwArcs: [
                        ArcValueModel(color: Color(0xFF00F9D8), value: 25),
                        ArcValueModel(color: Color(0xFFFF7F37), value: 45),
                        ArcValueModel(color:  Color(0xFFAD7BFF), value: 70),
                      ],
                      end: 40,
                      width: 12,
                      bgWidth: 8,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text('\$82,97', style: style24),
                    const Gap(10),
                    Text('of \$2,000 budget',
                        textAlign: TextAlign.center, style: style12),
                  ],
                )
              ]),
              const Gap(40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Container(
                      width: 326,
                      height: 60,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF4E4E61)),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Your budgets are on track', style: style14),
                          const SizedBox(width: 8),
                          SvgPicture.asset(
                            'assets/images/LikeLogo.svg',
                            width: 15,
                            height: 16,
                          )
                        ],
                      ),
                    ),
                    const Gap(16),
                    const BudgetCard(
                      color:  Color(0xFF00F9D8),
                      amountLeft: '\$375 left to spend',
                      category: 'Auto & Transport',
                      logoPath: 'assets/images/car.svg',
                      progressValue: 0.25,
                      spentAmount: '\$25.99',
                      totalAmount: 'of \$400',
                    ),
                    const Gap(8),
                    const BudgetCard(
                      color: Color(0xFFFF7F37),
                      amountLeft: '\$375 left to spend',
                      category: 'Entertainment',
                      logoPath: 'assets/images/fi-rr-confetti.svg',
                      progressValue: 0.45,
                      spentAmount: '\$50.99',
                      totalAmount: 'of \$600',
                    ),
                    const Gap(8),
                    const BudgetCard(
                      color: Color(0xFFAD7BFF),
                      amountLeft: '\$375 left to spend',
                      category: 'Security',
                      logoPath: 'assets/images/fingerprint.svg',
                      progressValue: 0.7,
                      spentAmount: '\$5.99',
                      totalAmount: 'of \$600',
                    ),
                    const Gap(8),
                    AddButton(
                      height: 84,
                      content: 'Add new category',
                    ),
                    SizedBox(height: 100,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



