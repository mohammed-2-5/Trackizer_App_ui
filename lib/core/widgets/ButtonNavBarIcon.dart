import 'package:flutter/material.dart';

class ButtonNavBarIcon extends StatelessWidget {
  const ButtonNavBarIcon({
    super.key, required this.size, required this.data, required this.onTap, required this.color,
  });
  final double size ;
  final IconData data;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onTap,
        icon:  Icon(
          data,
          size: size,
          color: color,
        ));
  }
}
