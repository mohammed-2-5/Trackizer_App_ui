import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({
    super.key, required this.type, required this.name,
  });

  final String type;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
            type,
            style: style14
        ),
        Spacer(),
        Text(
            name,
            textAlign: TextAlign.right,
            style: style12
        ),
        const SizedBox(width: 8),
        SvgPicture.asset('assets/images/Arrow Medium.svg'),
      ],
    );
  }
}
