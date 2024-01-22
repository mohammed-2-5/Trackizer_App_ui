import 'package:flutter/material.dart';

import '../../views/budget_screen.dart';
import '../../views/settings.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Align(
        alignment: Alignment.topRight,
        child: IconButton(
            onPressed: () {
              print('a7a');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      const Settings()));
            },
            icon: Icon(Icons.settings,color: Color(0xffA2A2B5),)),
      ),
    );
  }
}
