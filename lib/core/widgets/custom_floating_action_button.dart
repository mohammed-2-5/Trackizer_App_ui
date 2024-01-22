import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: ShapeDecoration(
        gradient: RadialGradient(
          center: const Alignment(1, 0.25),
          radius: 0,
          colors: [Colors.white.withOpacity(0), const Color(0xFFFF7F37)],
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(999),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x7FFF7966),
            blurRadius: 25,
            offset: Offset(0, 8),
            spreadRadius: 0,
          )
        ],
      ),
      child: FloatingActionButton(

        onPressed:onPressed, // Larger icon based on the design
        elevation: 4.0,
        backgroundColor: Colors.orange, // Add your onPressed code here!
        child:  const Icon(Icons.add, size: 30), // Color based on the image
      ),
    );
  }
}
