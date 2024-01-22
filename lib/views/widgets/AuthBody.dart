import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';
import 'package:trackizer_ui/views/register_screen.dart';
import 'package:trackizer_ui/views/widgets/ButtonDetails.dart';

import '../../core/widgets/CustomButton.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({super.key});
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onTap: () {

          },
          boxShadow: const [
            BoxShadow(
              color: Color(0x7F000000),
              blurRadius: 25,
              offset: Offset(0, 8),
              spreadRadius: 0,
            )
          ],
          media: media,
          shapeColor: Colors.black,
          borderColor: Colors.white.withOpacity(0.15000000596046448),
          buttonWidget: const ButtonDetails(
            title: 'Sign up with Apple',
            icon: Icons.apple_outlined,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        CustomButton(
          onTap:() {
          },
          boxShadow: const [
            BoxShadow(
              color: Color(0x3FFFFFFF),
              blurRadius: 25,
              offset: Offset(0, 8),
              spreadRadius: 0,
            )
          ],
          media: media,
          shapeColor: Colors.white,
          borderColor: Colors.white.withOpacity(0.5),
          buttonWidget: const ButtonDetails(
              title: 'Sign up with Google',
              icon: FontAwesomeIcons.google,
              color: Colors.black),
        ),
        const SizedBox(
          height: 16,
        ),
        CustomButton(
          onTap: () {

          },
          boxShadow: const [
            BoxShadow(
              color: Color(0x7F1771E6),
              blurRadius: 25,
              offset: Offset(0, 8),
              spreadRadius: 0,
            )
          ],
          media: media,
          shapeColor: const Color(0xFF1771E6),
          borderColor: Colors.white.withOpacity(0.30000001192092896),
          buttonWidget: const ButtonDetails(
            title: 'Sign up with Apple',
            icon: Icons.apple_outlined,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          'or',
          style: style14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        CustomButton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>const RegisterScreen(),));
          },
            media: media,
            shapeColor: Colors.white.withOpacity(0.10000000149011612),
            borderColor: Colors.white.withOpacity(0.15000000596046448),
            buttonWidget: Text(
              'Sign up with E-mail',
              style: style14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            )),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          width: media.width*0.8,
          child: Text(
            'By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.',
            style: style12.copyWith(color: const Color(0xFF666680),height: 1.5),
            textAlign: TextAlign.center,
          ),
        ),const SizedBox(height: 20,)
      ],
    );
  }
}
