import 'package:flutter/material.dart';
import 'package:trackizer_ui/core/styles/Colors.dart';

import 'package:trackizer_ui/core/widgets/Logo.dart';
import 'package:trackizer_ui/views/widgets/WelcomeScreenBody.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: Column(
          children: [
            // Space for the top logo
            Logo(media: media),


            // Expanded to fill the remaining space with the background and buttons
            Expanded(
              child: Stack(
                children: [
                  // Background elements here
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/Group 2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Buttons and text over the background
                  WelcomeScreenBody(media: media),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

