import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';

class PriceSelector extends StatefulWidget {
  final double initialPrice;

  const PriceSelector({
    Key? key,
    required this.initialPrice,
  }) : super(key: key);

  @override
  _PriceSelectorState createState() => _PriceSelectorState();
}

class _PriceSelectorState extends State<PriceSelector> {
  late double _currentPrice;

  @override
  void initState() {
    super.initState();
    _currentPrice = widget.initialPrice;
  }

  void _decreasePrice() {
    setState(() {
      _currentPrice = (_currentPrice - 1.00).clamp(0.00, double.infinity); // Prevents the price from going below 0
    });
  }

  void _increasePrice() {
    setState(() {
      _currentPrice += 1.00;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 48,
          height: 48,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFF353542),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: IconButton(
            icon:SvgPicture.asset('assets/images/Minus.svg'), // Minus icon
            onPressed: _decreasePrice,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Monthly price', style: style12),
            Gap(15),
            Text('\$${_currentPrice.toStringAsFixed(2)}',
                style: style24),
          ],
        ),
        Container(
          width: 48,
          height: 48,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFF353542),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: IconButton(
            icon:SvgPicture.asset('assets/images/Plus.svg',height: 48,width: 48,), // Minus icon
            onPressed: _increasePrice,
          ),
        ),
      ],
    );
  }
}
