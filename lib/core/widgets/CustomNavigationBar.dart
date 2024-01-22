import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trackizer_ui/views/budget_screen.dart';
import 'package:trackizer_ui/views/calender_screen.dart';
import 'package:trackizer_ui/views/credit_screen.dart';
import 'package:trackizer_ui/views/home.dart';

import 'ButtonNavBarIcon.dart';

class CustomNavigationBar extends StatefulWidget {
   CustomNavigationBar({
    super.key,
    required this.size, required this.currentPage,
  });
  final double size;
   Widget currentPage=Home();
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {

  int selectTap=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ButtonNavBarIcon(
          size: widget.size,
          data: Icons.home,
          onTap: () {
            setState(() {
              selectTap=0;
              widget.currentPage=Home();
            });
          },
          color: selectTap==0?Colors.white:Color(0xffA2A2B5),
        ),
        ButtonNavBarIcon(
          size: widget.size,
          data: Icons.menu,
          onTap: () {
            setState(() {
              selectTap=1;
             widget.currentPage=const BudgetScreen();
            });
          },
          color: selectTap==1?Colors.white:Color(0xffA2A2B5),
        ),
        const Gap(50),
        ButtonNavBarIcon(
          size: widget.size,
          data: Icons.calendar_month_sharp,
          onTap: () {
            setState(() {
              selectTap=2;
              widget.currentPage=CalendarScreen();
            });
            
          },
          color: selectTap==2?Colors.white:Color(0xffA2A2B5),
        ),
        ButtonNavBarIcon(
          size: widget.size,
          data: Icons.credit_card_rounded,
          onTap: () {
            setState(() {
              selectTap=3;
              widget.currentPage=CreditScreen();
            });
          },
          color: selectTap==3?Colors.white:Color(0xffA2A2B5),
        ),
      ],
    );
  }
}
