import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:trackizer_ui/core/styles/Colors.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';

import '../core/widgets/SettingButton.dart';
import 'widgets/MonthDropDawnBurron.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedDate = DateTime.now();

  List<String> months = DateFormat.MMMM().dateSymbols.MONTHS;


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    // Get the number of days in the selected month
    List<DateTime> daysInMonth = List.generate(
      DateUtils.getDaysInMonth(selectedDate.year, selectedDate.month),
      (index) => DateTime(selectedDate.year, selectedDate.month, index + 1),
    );
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
    return SafeArea(
        child: Scaffold(
            backgroundColor: mainColor,
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: media.height * 0.47,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF353542).withOpacity(0.5),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                  ),
                  child: Stack(
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
                              child: Text('Calendar',
                                  textAlign: TextAlign.center, style: style16),
                            ),
                          )),
                          const SettingsButton(), // Settings icon on the right
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24,right: 24,top:60,bottom: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Subs\nSchedule', style: style40),
                            const Gap(22),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('3 subscriptions for today',
                                    style: style14.copyWith(
                                      color: const Color(0xFFA2A2B5),
                                    )),
                                MonthDropdown(
                                  selectedDate: selectedDate,
                                  months: months,
                                  onMonthChanged: (String? newValue) {
                                    setState(() {
                                      int monthIndex = months.indexOf(newValue!);
                                      selectedDate = DateTime(selectedDate.year, monthIndex + 1, 1);
                                    });
                                  },
                                ),
                              ],
                            ),
                            Spacer(),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: daysInMonth.map((date) {
                                  bool isSelected =
                                      DateUtils.isSameDay(selectedDate, date) ??
                                          false;
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedDate = date;
                                      });
                                    },
                                    child: Container(
                                      height: 103,
                                      padding: const EdgeInsets.only(
                                          left: 11,
                                          right: 10,
                                          bottom: 16,
                                          top: 28),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      decoration: ShapeDecoration(
                                        color: isSelected
                                            ? const Color(0xFF4E4E61)
                                            : const Color(0x334E4E61),
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 1,
                                              color: Color(0x26CFCFFC)),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(DateFormat('dd').format(date),
                                              style: style20.copyWith(
                                                  color: Colors.white)),
                                          const Gap(4),
                                          Text(DateFormat('E').format(date),
                                              style: style12.copyWith(
                                                color: const Color(0xFFA2A2B5),
                                              )),
                                          const Spacer(),
                                          isSelected
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 2),
                                                  child: Container(
                                                    height: 6,
                                                    width: 6,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Color(0xffFF7966),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                )
                                              : const Offstage(),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(30),
                Padding(
                  padding: const  EdgeInsets.only(left: 24,right: 24,top:24),
                  child:  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                DateFormat.MMMM().format(selectedDate),
                                style: style20.copyWith(color: Colors.white),
                              ),
                              Text(
                               DateFormat.yMMMMEEEEd().format(selectedDate),
                                style: style12
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '\$24.98',
                                textAlign: TextAlign.right,
                                style:style20.copyWith(color: Colors.white)
                              ),
                              Text(
                                'in upcoming bills',
                                style: style12
                              )
                            ],
                          ),
                        ],
                      ),
                      Gap(24),
                      SizedBox(
                        height: media.height * 0.3,
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Two items per line
                            crossAxisSpacing: 10, // Spacing between items along the cross axis
                            mainAxisSpacing: 10, // Spacing between items along the main axis
                            childAspectRatio: (media.width / 2 - 10) / (media.height * 0.23)),
                          itemCount: itemsDetails.length,// Replace with the actual number of items
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: media.width * 0.42,
                              height: media.height * 0.20,
                              decoration: ShapeDecoration(
                                color: Color(0x334E4E61),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Color(0x26CFCFFC)),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(itemsDetails[index]['itemLogo'], height: 40, width: 40,),
                                    Text(
                                        itemsDetails[index]['itemName'],
                                        style: style14
                                    ),
                                    Text(
                                        itemsDetails[index]['price'],
                                        style: style20
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),
        ),
    );
  }

  DropdownButtonHideUnderline buildDropdownButtonHideUnderline() {
    return DropdownButtonHideUnderline(
      child: Container(
        height: 32,
        padding: const EdgeInsets.symmetric(horizontal: 12),
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
        child: DropdownButton<String>(
          value: DateFormat.MMMM().format(selectedDate),
          icon: const Icon(Icons.arrow_drop_down,
              color: Colors.white), // Dropdown arrow color
          iconSize: 12,
          elevation: 16,
          style: style12.copyWith(color: Colors.white), // Text color
          dropdownColor: Colors.grey[850], // Dropdown menu background color
          onChanged: (String? newValue) {
            setState(() {
              int monthIndex = months.indexOf(newValue!);
              selectedDate = DateTime(selectedDate.year, monthIndex + 1, 1);
            });
          },
          items: months.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Container(
                // padding: const EdgeInsets.all(8.0), // Add padding inside dropdown items
                child: Text(
                  value,
                  style: style12.copyWith(
                      color: Colors.white), // Dropdown item text color
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
