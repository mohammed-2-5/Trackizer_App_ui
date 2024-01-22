import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trackizer_ui/views/home.dart';

import '../core/widgets/ButtonNavBarIcon.dart';
import '../core/widgets/custom_floating_action_button.dart';
import 'add_new_sub.dart';
import 'budget_screen.dart';
import 'calender_screen.dart';
import 'credit_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageStorageBucket pageStorage = PageStorageBucket();
  Widget currentPage = const Home();
  int selectTap=0;
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          PageStorage(bucket: pageStorage, child: currentPage),
          SafeArea(
              child: Column(
            children: [
              const Spacer(),
              buildCustomNavBar(media)
            ],
          ))
        ],
      ),
      floatingActionButton:  Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: CustomFloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewSub(),));
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

   buildCustomNavBar(Size media) {
    return Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    width: media.width,
                    height: 55,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/BG.png'),
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        //side: BorderSide(width: 1, color: Color(0x26CFCFFC)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonNavBarIcon(
                        size: 30,
                        data: Icons.home,
                        onTap: () {
                          setState(() {
                            selectTap=0;
                            currentPage=const Home();
                          });
                        },
                        color: selectTap==0?Colors.white:const Color(0xffA2A2B5),
                      ),
                      ButtonNavBarIcon(
                        size: 30,
                        data: Icons.menu,
                        onTap: () {
                          setState(() {
                            selectTap=1;
                            currentPage=const BudgetScreen();
                          });
                        },
                        color: selectTap==1?Colors.white:const Color(0xffA2A2B5),
                      ),
                      const Gap(50),
                      ButtonNavBarIcon(
                        size: 30,
                        data: Icons.calendar_month_sharp,
                        onTap: () {
                          setState(() {
                            selectTap=2;
                            currentPage=const CalendarScreen();
                          });

                        },
                        color: selectTap==2?Colors.white:const Color(0xffA2A2B5),
                      ),
                      ButtonNavBarIcon(
                        size:30,
                        data: Icons.credit_card_rounded,
                        onTap: () {
                          setState(() {
                            selectTap=3;
                            currentPage=const CreditScreen();
                          });
                        },
                        color: selectTap==3?Colors.white:const Color(0xffA2A2B5),
                      ),
                    ],
                  ),
                ]),
              ),
            );
  }
}
