import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:trackizer_ui/core/styles/Colors.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';
import 'package:trackizer_ui/core/widgets/CustomButton.dart';
import 'package:trackizer_ui/views/widgets/DetailsContent.dart';

import 'widgets/SubInfoAppBar.dart';
import 'widgets/SubInfoShapeContainer.dart';

class SubInfo extends StatelessWidget {
  const SubInfo({Key? key, required this.itemName, required this.itemLogo, required this.price}) : super(key: key);

  final String itemName;
  final String  itemLogo;
  final String price;
  @override
  Widget build(BuildContext context) {
    var  media=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SubInfoShapeContainer(media: media),
              Positioned(
                  left: -20,
                  bottom: MediaQuery.of(context).size.height*0.51,
                  child:   CircleAvatar(
                    backgroundColor:mainColor,
                  )
              ),
              Positioned(
                  right: -20,
                  bottom: MediaQuery.of(context).size.height*0.51,
                  child:   CircleAvatar(
                    backgroundColor:mainColor,
                  )
              ),
              SubInfoAppBar(),
              Padding(
                padding:  EdgeInsets.only(
                   left: media.width*0.26,top: media.height*0.14,right:media.width*0.22 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(itemLogo,height: 100,width: 100,),
                    Gap(30),
                    Text(
                        itemName,
                        textAlign: TextAlign.center,
                        style: style32
                    ),
                    Gap(10),
                    Text(
                       price,
                        textAlign: TextAlign.right,
                        style: style20.copyWith(color: Color(0xFFA2A2B5),)
                    )
                  ],
                ),
              ),

              Padding(
            padding:  EdgeInsets.only(
              top: media.height*0.4458,
              left: media.width*0.0533,
              right:media.width*0.0533,
            ),
              child: Container(
              width: media.width*0.768,
              height: media.height*0.374,
              decoration: ShapeDecoration(
                color: Color(0x334E4E61),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0x26CFCFFC)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DetailsContent(type: 'Name',name: 'Spotify'),
                      DetailsContent(type: 'Description ',name: 'Music app',),
                      DetailsContent(type: 'Category',name: 'Entertainment'),
                      DetailsContent(type: 'First Payment',name: '08.01.2022'),
                      DetailsContent(type: 'Reminder',name: 'Never'),
                      DetailsContent(type: 'Currency',name: 'USD (\$)',),
                    ],
                  ),
                ),
              ),
          ),
              Padding(
                padding:  EdgeInsets.only(
                  top: media.height*0.85,
                  left: media.width*0.0533,
                  right:media.width*0.0533,
                ),
                child:CustomButton(
                  height: media.height*0.059,
                  media: media,
                    shapeColor: Colors.white.withOpacity(0.10000000149011612),
                    borderColor: Colors.white.withOpacity(0.15000000596046448),
                    buttonWidget: Text('Save',style: style14,),
                  onTap: () {},),
              )
            ],
          ),
        ),
      ),
    );
  }
}



