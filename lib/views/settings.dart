import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:trackizer_ui/core/styles/Colors.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';

import '../core/widgets/CustomButton.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset('assets/images/ArrowBack.svg')),
                    SizedBox(
                      width: media.width * 0.23,
                    ),
                    Text('Settings', textAlign: TextAlign.center, style: style16),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 72,
                  height:
                      72, // Ensure the height is the same as the width to create a circle
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        68.5), // Half of the width/height to make it a circle
                    image: const DecorationImage(
                      image: AssetImage('assets/images/ProfileImage.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Gap(8),
                Text('John Doe', textAlign: TextAlign.center, style: style20),
                Text('j.doe@gmail.com',
                    textAlign: TextAlign.center, style: style12),
                const Gap(16),
                Container(
                  width: 87,
                  height: 32,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.10000000149011612),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.white.withOpacity(0.15000000596046448),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    'Edit profile',
                    textAlign: TextAlign.center,
                    style:style12.copyWith(color: Colors.white,fontWeight: FontWeight.w600)
                  ),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'General',
                        style:style14
                      ),
                      const Gap(8),
                      Container(
                        width: 328,
                        height: 112,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        decoration: ShapeDecoration(
                          color: const Color(0x334E4E61),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Color(0x26CFCFFC)),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child:   Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SettingsContentInfo(
                              logo:'assets/images/FaceID.svg' ,
                              title: 'Security ',
                              value: 'FaceID',
                            ),

                            Row(
                              children: [
                                SvgPicture.asset('assets/images/iCloud.svg'),
                                const Gap(20),
                                Text(
                                    'iCloud Sync',
                                    style: style14
                                ),
                                const Spacer(),
                                SvgPicture.asset('assets/images/Switch.svg'),

                              ],
                            )
                          ],
                        ),
                      ),
                      Gap(24),
                      Text(
                        'My subscriptions',
                        style: style14
                      ),Gap(8),

                      Container(
                        width: 328,
                        height: 160,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        decoration: ShapeDecoration(
                          color: Color(0x334E4E61),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0x26CFCFFC)),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child:  const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SettingsContentInfo(
                              logo:'assets/images/Sorting.svg' ,
                              title: 'Sorting ',
                              value: 'Date',
                            ),
                            SettingsContentInfo(
                              logo:'assets/images/Chart.svg' ,
                              title: 'Summary ',
                              value: 'Average',
                            ),

                            SettingsContentInfo(
                              logo:'assets/images/Money.svg' ,
                              title: 'Default currency ',
                              value: 'USD (\$)',
                            ),

                          ],
                        ),
                      ),
                      Gap(24),
                      Text(
                        'Appearance',
                        style: style14
                      ),
                      Gap(8),
                      Container(
                        width: 328,
                        height: 160,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        decoration: ShapeDecoration(
                          color: Color(0x334E4E61),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0x26CFCFFC)),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child:const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SettingsContentInfo(
                              logo:'assets/images/App icon.svg' ,
                              title: 'App Icon ',
                              value: 'Default',
                            ),
                            SettingsContentInfo(
                              logo:'assets/images/Light theme.svg' ,
                              title: 'Theme ',
                              value: 'Dark',
                            ),

                            SettingsContentInfo(
                              icon:Icon(
                                  Icons.font_download_outlined,
                                  color: Color(0xffC1C1CD),
                              size: 24,),
                              title: 'Font',
                              value: 'Inter',
                            ),

                          ],
                        ) ,
                      ),
                      Gap(20),
                      CustomButton(
                        height: media.height*0.059,
                        media: media,
                        shapeColor: Colors.white.withOpacity(0.10000000149011612),
                        borderColor: Colors.white.withOpacity(0.15000000596046448),
                        buttonWidget: Text('Save',style: style14,),
                        onTap: () {},),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsContentInfo extends StatelessWidget {
  const SettingsContentInfo({
    super.key,  this.logo, required this.title, required this.value, this.icon,
  });
  final String? logo;
  final String title;
  final String value;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon??SvgPicture.asset(logo!),
        const Gap(20),
        Text(
          title,
          style: style14
        ),
        const Spacer(),
        Text(
            value,
            style: style14
        ),
        Gap(20),
        SvgPicture.asset('assets/images/Arrow Medium.svg'),

      ],
    );
  }
}
