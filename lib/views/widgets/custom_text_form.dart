import 'package:flutter/material.dart';

import '../../core/styles/TextStyles.dart';
class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key, required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(label,style: style12,),
        const SizedBox(height: 10,),
        Container(
          width: 326,
          height: 48,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF353542)),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: TextFormField(
            style:  const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none)
            ),
          ),
        )
      ],
    );
  }
}
