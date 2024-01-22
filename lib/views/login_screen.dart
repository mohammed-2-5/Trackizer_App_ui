import 'package:flutter/material.dart';
import 'package:trackizer_ui/core/styles/Colors.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';
import 'package:trackizer_ui/views/home.dart';

import 'package:trackizer_ui/core/widgets/Logo.dart';
import 'package:trackizer_ui/views/main_screen.dart';
import 'package:trackizer_ui/views/register_screen.dart';
import 'package:trackizer_ui/views/widgets/custom_text_form.dart';

import '../core/widgets/CustomButton.dart';
import '../core/widgets/GetStartedButton.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media =MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Logo(media: media),
           const  SizedBox(height:60),
           const CustomTextForm(label: 'Login',),
           const SizedBox(height:25),
           const CustomTextForm(label: 'Password',),
           const SizedBox(height:25),
           Row(
             children:[
               Checkbox(
               side:  const BorderSide(
                   width: 1, color: Color(0xFF353542)),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(6)
               ),
               value: false, onChanged: (value) {

             },),
               Text('Remember me',style: style14.copyWith(
                 fontWeight: FontWeight.w400,
                 color: const Color(0xFF666680),
               ),),
               const Spacer(),
               Text(
                 'Forgot passoword',
                 textAlign: TextAlign.center,
                 style:style14.copyWith(fontWeight: FontWeight.w400,
                   color: const Color(0xFF666680),)
               )
             ]
           ),
            const SizedBox(height: 25,),
            GetStartedButton(media: media, onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => MainScreen(),));
            },title: 'Log in',),
            const Spacer(),
            Text(
              'If you don\'t have an account yet?',
              style: style14.copyWith(height: 1.4,letterSpacing: 0.4,fontWeight: FontWeight.w400),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RegisterScreen();
              },));
              },),
            const SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
