import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    required this.media,
  });

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: media.height * 0.06), // Logo top padding
      child: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: media.width*0.4,
        ),
      ),
    );
  }
}
