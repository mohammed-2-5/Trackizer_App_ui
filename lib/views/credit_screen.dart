import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:trackizer_ui/core/styles/Colors.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';
import 'package:trackizer_ui/core/widgets/CustomNavigationBar.dart';

import '../core/widgets/SettingButton.dart';
import 'widgets/AddButton.dart';

class CreditScreen extends StatefulWidget {
  const CreditScreen({Key? key}) : super(key: key);

  @override
  State<CreditScreen> createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {
  List carArr = [
    {
      "name": "code for any1",
      "number": "**** **** **** 2197",
      "month_year": "08/27"
    },
    {
      "name": "code for any2",
      "number": "**** **** **** 2198",
      "month_year": "09/27"
    },
    {
      "name": "code for any3",
      "number": "**** **** **** 2297",
      "month_year": "07/27"
    },
    {
      "name": "code for any4",
      "number": "**** **** **** 2397",
      "month_year": "05/27"
    },
  ];

  SwiperController controller = SwiperController();

  Widget buildSwiper() {
    return Swiper(
      itemCount: carArr.length,
      customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
        ..addRotate([
          -15.0 / 180, // Adjust rotation angle as needed
          0.0,
          15.0 / 180 // Adjust rotation angle as needed
        ])
        ..addTranslate([
          const Offset(-370.0, -40.0), // Adjust translation as needed
          Offset.zero,
          const Offset(370.0, -40.0), // Adjust translation as needed
        ]),

      fade: 2.0,
      onIndexChanged: (index) {
        print(index);
      },
      scale: 0.8,
      itemWidth: 232.0,
      itemHeight: MediaQuery.of(context).size.height*0.5,
      controller: controller,
      layout: SwiperLayout.STACK,
      viewportFraction: 0.8,
      itemBuilder: ((context, index) {
        var cObj = carArr[index] as Map? ?? {};
        return Container(
          decoration: BoxDecoration(
              color: Color(0xFF1C1C23),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.black26, blurRadius: 4)
              ]),
          child: Stack(fit: StackFit.expand, children: [
            Image.asset(
              "assets/images/card_blank.png",
              width: 232.0,
              height:  MediaQuery.of(context).size.height*0.5,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SvgPicture.asset("assets/images/MasterCard Logo.svg", width: 50),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Virtual Card",
                  style: style16
                ),
                const SizedBox(
                  height: 115,
                ),
                Text(
                  cObj["name"] ?? "Code For Any",
                  style:style12
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  cObj["number"] ?? "**** **** **** 2197",
                  style: style16
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  cObj["month_year"] ?? "08/27",
                  style: style14
                ),
              ],
            )
          ]),
        );
      }),
      autoplayDisableOnInteraction: false,
      axisDirection: AxisDirection.right,
    );
  }

  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return  SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: Column(
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.center, // Center align the row
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Credit Cards',
                            textAlign: TextAlign.center, style: style16),
                      ),
                    )),
                const SettingsButton(), // Settings icon on the right
              ],
            ),
            Gap(15),

            Container(
              width: double.infinity,
              height: 360,
              child: buildSwiper(),
            ),
            Gap(20),
            Text(
              'Subscriptions',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.09,
              ),
            ),
            Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SvgPicture.asset('assets/images/Spotify.svg',height: 40,width: 40,),
                Gap(8),

                SvgPicture.asset('assets/images/YT Premium Lgoo.svg',height: 40,width: 40,),
                Gap(8),

                SvgPicture.asset('assets/images/OneDrive Logo.svg',height: 40,width: 40,),
                Gap(8),

                SvgPicture.asset('assets/images/Netflix Logo.svg',height: 40,width: 40,),
              ],
            ),
            Spacer(),
            Opacity(
              opacity: 0.50,
              child: Container(
                padding: EdgeInsets.only(top:15),
                width: double.infinity,
                height: media.height*0.23,
                decoration:const BoxDecoration(
                  color: Color(0xFF353542),
                  borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Align(

                  alignment: Alignment.topCenter,
                  child: const AddButton(
                    height: 50,
                    content: 'Add new Crad',
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
