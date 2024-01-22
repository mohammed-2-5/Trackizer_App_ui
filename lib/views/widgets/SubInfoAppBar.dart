import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/styles/TextStyles.dart';

class SubInfoAppBar extends StatelessWidget {
  const SubInfoAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:SvgPicture.asset('assets/images/Arrow Down.svg',width: 24,height: 24,),),
          Text(
              'Subscription info',
              textAlign: TextAlign.center,
              style: style16
          ),
          IconButton(
            onPressed: () {},
            icon:SvgPicture.asset('assets/images/Trash.svg',width: 24,height: 24,),),

        ],
      ),
    );
  }
}
