import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MonthDropdown extends StatelessWidget {
  final DateTime selectedDate;
  final List<String> months;
  final Function(String?) onMonthChanged;

  const MonthDropdown({
    Key? key,
    required this.selectedDate,
    required this.months,
    required this.onMonthChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
          iconSize: 12,
          elevation: 16,
          style: TextStyle(color: Colors.white), // Use TextStyle directly if style12 is not accessible
          dropdownColor: Colors.grey[850],
          onChanged: onMonthChanged,
          items: months.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: TextStyle(color: Colors.white)), // Use TextStyle directly if style12 is not accessible
            );
          }).toList(),
        ),
      ),
    );
  }
}
