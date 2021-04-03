import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class AgeCard extends StatefulWidget {
  @override
  _AgeCardState createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {
  int _currentHorizontalIntValue = 10;

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      value: _currentHorizontalIntValue,
      minValue: 0,
      maxValue: 100,
      step: 1,
      itemHeight: 60,
      itemWidth: 60,
      axis: Axis.horizontal,
      onChanged: (value) =>
          setState(() => _currentHorizontalIntValue = value),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black26),
      ),
    );
  }
}
