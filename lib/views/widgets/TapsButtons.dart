import 'package:flutter/material.dart';
import 'package:trackizer_ui/views/widgets/TapContainer.dart';


class TapsButtons extends StatefulWidget {
  const TapsButtons({
    super.key,
    required this.media, required this.onTabSelected,
  });

  final Size media;
  final void Function(bool) onTabSelected;

  @override
  State<TapsButtons> createState() => _TapsButtonsState();
}

class _TapsButtonsState extends State<TapsButtons> {
  bool isButtonSelected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: widget.media.width,
      height: widget.media.height * 0.065,
      decoration: ShapeDecoration(
        color: const Color(0xFF0E0E12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TapContainer(
              content: 'Your subscriptions',
              color: isButtonSelected ? Color(0x334E4E61) : Color(0xFF0E0E12),
              borderColor:
                  isButtonSelected ? Color(0x26CFCFFC) : Color(0xFF0E0E12),
              textColor: isButtonSelected?Colors.white: Color(0xFFA2A2B5),
              onTap: () {
                setState(() {
                  isButtonSelected = true;
                  widget.onTabSelected(isButtonSelected);
                  // Add logic to change the displayed list for 'Your subscriptions'
                });
              },
            ),
            TapContainer(
              content: 'Upcoming bills',
              color:isButtonSelected ? Color(0xFF0E0E12) :Color(0x334E4E61),
              borderColor:  isButtonSelected ?  Color(0xFF0E0E12): Color(0x26CFCFFC),
                textColor: isButtonSelected?Color(0xFFA2A2B5):Colors.white,
              onTap: () {
                setState(() {
                  isButtonSelected = false;
                  widget.onTabSelected(isButtonSelected);

                  // Add logic to change the displayed list for 'Your subscriptions'
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
