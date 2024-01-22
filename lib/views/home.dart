import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:trackizer_ui/core/styles/Colors.dart';
import 'package:trackizer_ui/core/widgets/SettingButton.dart';

import 'package:trackizer_ui/views/sub_info.dart';

import 'package:trackizer_ui/views/widgets/CustomCircularIndicator.dart';
import 'package:trackizer_ui/views/widgets/SubscriptionContainer.dart';


import 'widgets/SubItem.dart';
import 'widgets/TapsButtons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSelected = true;
  final List<Map<String, dynamic>> itemsDetails = [
    {
      'itemName': 'Spotify',
      'itemLogo': 'assets/images/Spotify.svg',
      'price': '\$5.99',
    },
    {
      'itemName': 'YouTube',
      'itemLogo': 'assets/images/YT Premium Lgoo.svg',
      'price': '\$18.99',
    },
    {
      'itemName': 'OneDrive',
      'itemLogo': 'assets/images/OneDrive Logo.svg',
      'price': '\$20.99',
    },
    {
      'itemName': 'Netflix',
      'itemLogo': 'assets/images/Netflix Logo.svg',
      'price': '\$10.99',
    },
    {
      'itemName': 'HBO',
      'itemLogo': 'assets/images/HBO Logo.svg',
      'price': '\$13.99',
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: Column(
          children: [
            Container(
              width: media.width,
              height: media.height * 0.5,
              decoration:  ShapeDecoration(
                color:  const Color(0xFF353542).withOpacity(0.5),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/Circles2.png',
                    fit: BoxFit.fitHeight,
                    color: Colors.white,
                    filterQuality: FilterQuality.high,
                    width: media.width,
                    height: 330,

                  ),
                  Stack(
                    children: [
                      const Align(
                        alignment: Alignment.topRight,
                        child:SettingsButton(),
                      ),

                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: CustomCircularIndicator(media: media),
                          )),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SubscriptionContainer(
                                  color: Color(0xFFFFA699),
                                  subName: 'Active Subs',
                                  subNumber: '12'),
                              SubscriptionContainer(
                                  color: Color(0xFFAD7BFF),
                                  subName: 'Highest subs',
                                  subNumber: '\$19.99'),
                              SubscriptionContainer(
                                  color: Color(0xFF7DFFEE),
                                  subName: 'Lowest subs',
                                  subNumber: '\$5.99'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Gap(16),
            TapsButtons(
              media: media,
              onTabSelected: (value) {
                setState(() {
                  isSelected = value;
                });
              },
            ),
            const Gap(16),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => SubItem(
                              onTap: () {
                                Navigator.push(context, PageRouteBuilder(
                                  allowSnapshotting: true,
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    const begin = Offset(1.0, 0.0);
                                    const end = Offset.zero;
                                    const curve = Curves.easeInOut;

                                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                    var offsetAnimation = animation.drive(tween);

                                    return SlideTransition(position: offsetAnimation, child: child);
                                  },

                                  pageBuilder: (context, animation, secondaryAnimation) {
                                  return SubInfo(
                                    itemName:itemsDetails[index]['itemName'] ,
                                    itemLogo: itemsDetails[index]['itemLogo'],
                                    price:itemsDetails[index]['price'] ,
                                  );

                                },));
                              },
                                  media: media,
                                  isSelected: isSelected,
                                  itemName: itemsDetails[index]['itemName'],
                                  itemImage: itemsDetails[index]['itemLogo'],
                                  itemPrice: itemsDetails[index]['price'],
                                ),
                            separatorBuilder: (context, index) => const Gap(8),
                            itemCount: itemsDetails.length),
                      ),

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
           ),
    );
  }
}
