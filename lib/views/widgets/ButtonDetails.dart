
import 'package:flutter/material.dart';

import '../../core/styles/TextStyles.dart';

class ButtonDetails extends StatelessWidget {
  const ButtonDetails({
    super.key, required this.title, required this.icon, this.color,
  });
  final String title;
  final IconData icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min, // Use min size of Row
      mainAxisAlignment: MainAxisAlignment.center, // Center the children
      children: <Widget>[
         Icon(
         icon, // Your Apple icon
          color: color??Colors.white,
          size: 22,
        ),
        const SizedBox(width: 8), // Provide some horizontal space between the icon and the text
        Text(
         title,
          style:style14.copyWith(color: color?? Colors.white),
        ),
      ],
    );
  }
}
