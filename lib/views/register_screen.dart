import 'package:flutter/material.dart';
import 'package:trackizer_ui/core/styles/Colors.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';

import 'package:trackizer_ui/views/widgets/DividerLine.dart';
import 'package:trackizer_ui/core/widgets/Logo.dart';
import 'package:trackizer_ui/views/widgets/custom_text_form.dart';

import '../core/widgets/CustomButton.dart';
import '../core/widgets/GetStartedButton.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Logo(media: media),
           const  SizedBox(height:60),
            const CustomTextForm(label: 'E-mail address',),
            const SizedBox(height:25),
            const CustomTextForm(label: 'Password',),
            const SizedBox(height:25),
            FixedSizeLine(),
            const SizedBox(height:16),
            Text(
              'Use 8 or more characters with a mix of letters, numbers & symbols.',
              style: style12.copyWith(height: 1.4,letterSpacing: 0.4)
            ),
            const SizedBox(height: 40,),
            GetStartedButton(media: media, onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginScreen(),) );
            },title: 'Get started, it’s free!',),
            const Spacer(),
            Text(
                'Do you have already an account?',
                style: style14.copyWith(height: 1.4,letterSpacing: 0.4),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            CustomButton(media: media,
                shapeColor:  Colors.white.withOpacity(0.10000000149011612),
                borderColor: Colors.white.withOpacity(0.15000000596046448),
                buttonWidget: Text(
                  'Sign in',style: style14,
                ),
                onTap: () {

                },),
            const SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
}

