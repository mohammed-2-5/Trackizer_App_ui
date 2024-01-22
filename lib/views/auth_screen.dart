import 'package:flutter/material.dart';
import 'package:trackizer_ui/views/widgets/AuthBody.dart';

import '../core/styles/Colors.dart';
import '../core/widgets/Logo.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;


  return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Logo(media: media),
          const AuthBody()
        ],
      ),
    );
  }
}

