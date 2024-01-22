import 'package:flutter/material.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';

class SubscriptionContainer extends StatelessWidget {
  const SubscriptionContainer({
    super.key, required this.subName, required this.subNumber, required this.color,
  });
  final String subName;
  final String subNumber;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 68,
      decoration: ShapeDecoration(

        color: Color(0xFF2E2E47),  // Adjust the alpha for opacity as needed

        shadows: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25), // Adjust opacity as needed
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x26CFCFFC)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Stack(

        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  subName,
                  textAlign: TextAlign.center,
                  style: style12
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                    subNumber,
                    textAlign: TextAlign.center,
                    style: style14
                ),
              ),
            ],
          ),

          Positioned(
            left: 29,
            top: 0,
            child: Container(
              width: 46,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: color,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
