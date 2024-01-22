import 'package:flutter/material.dart';

import '../../core/styles/TextStyles.dart';

class CardTextInfo extends StatelessWidget {
  const CardTextInfo({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(text1, style: style14), Text(text2, style: style12)],
    );
  }
}
