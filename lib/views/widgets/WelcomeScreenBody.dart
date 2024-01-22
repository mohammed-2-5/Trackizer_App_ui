import 'package:flutter/material.dart';

import '../../core/styles/TextStyles.dart';
import '../../core/widgets/CustomButton.dart';
import '../../core/widgets/GetStartedButton.dart';
import '../auth_screen.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({
    super.key,
    required this.media,
  });

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20, // Space from bottom for buttons
      left: 20,
      right: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Text(
            'Congue malesuada in ac justo, a tristique leo massa. Arcu leo leo urna risus.',
            textAlign: TextAlign.center,
            style: style16,
          ),
          const SizedBox(height: 20), // Space between text and button
          GetStartedButton(
            title: 'Get started',
            media: media,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthScreen(),
                  ));
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(onTap: () {

          },
              media: media,
              shapeColor: Colors.white.withOpacity(0.10000000149011612),
              borderColor: Colors.white.withOpacity(0.15000000596046448),
              buttonWidget: Text(
                'I have an account',
                style: style14,
              )),
        ],
      ),
    );
  }
}
