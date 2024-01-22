import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:trackizer_ui/core/styles/Colors.dart';
import 'package:trackizer_ui/core/widgets/GetStartedButton.dart';
import 'package:trackizer_ui/views/widgets/CustomCarouselSlider.dart';
import 'package:trackizer_ui/views/widgets/PriceSelector.dart';
import 'package:trackizer_ui/views/widgets/custom_text_form.dart';

import '../core/styles/TextStyles.dart';
class AddNewSub extends StatelessWidget {
   AddNewSub({super.key});



   final List<Map<String, dynamic>> itemsDetails = [
     {
       'itemName': 'Spotify',
       'itemLogo': 'assets/images/Spotify Logo.png',
       'price': '\$5.99',
     },
     {
       'itemName': 'OneDrive',
       'itemLogo': 'assets/images/OneDrive Logo.png',
       'price': '\$20.99',
     },
     {
       'itemName': 'Netflix',
       'itemLogo': 'assets/images/Netflix Logo.png',
       'price': '\$10.99',
     },
     {
       'itemName': 'HBO GO',
       'itemLogo':'assets/images/HBO GO Logo.png',
       'price': '\$13.99',
     }
   ];

   @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: media.width,
                height: media.height * 0.586,
                decoration: const ShapeDecoration(
                  color: Color(0xFF353542),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {Navigator.pop(context);},
                            icon: SvgPicture.asset('assets/images/ArrowBack.svg',width: 24,height: 24,),

                          ),
                          Gap(media.width*0.33),
                          Text(
                              'New',
                              textAlign: TextAlign.center,
                              style:style16.copyWith(fontSize: 20)
                          ),
                        ],
                      ),
                    ),
                    const Gap(30),
                    Text(
                      'Add new\nsubscription',
                      textAlign: TextAlign.center,
                      style: style40.copyWith(height: 1)
                    ),
                    Gap(media.height*0.05),
                    CustomCarouselSlider(itemsDetails: itemsDetails),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Gap(media.height*0.02),
                    Text(
                        'Description',
                        textAlign: TextAlign.center,
                        style: style12
                    ),
                    const CustomTextForm(label: ''),
                    Gap(media.height*0.024),
                    const PriceSelector(initialPrice: 5.99),
                    Gap(media.height*0.04),
                    GetStartedButton(width:double.infinity,media: media, onTap: () {}, title: 'Add this platform'),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

