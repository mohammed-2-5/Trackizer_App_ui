import 'package:flutter/material.dart';
import 'package:trackizer_ui/views/home.dart';
import 'package:trackizer_ui/views/main_screen.dart';
import 'package:trackizer_ui/views/welcome_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  //final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //navigatorKey: navigatorKey,

      debugShowCheckedModeBanner: false,

      home:WelcomeScreen(),
    );
  }
}


