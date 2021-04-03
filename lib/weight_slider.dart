import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class WeightSlider extends StatefulWidget {
  @override
  _WeightSliderState createState() => _WeightSliderState();
}

class _WeightSliderState extends State<WeightSlider> {
  final slider = SleekCircularSlider(
      appearance: CircularSliderAppearance(
          infoProperties: InfoProperties(
              bottomLabelText: 'Weight',
              bottomLabelStyle: TextStyle(fontSize: 25),
              modifier: (double value) {
                final roundedValue = value.ceil().toInt().toString();
                return '$roundedValue';
              },
              mainLabelStyle:
              TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900)),
          customColors: CustomSliderColors(dotColor: Colors.lightBlueAccent),
          customWidths:
          CustomSliderWidths(progressBarWidth: 13, handlerSize: 14)),
      min: 5,
      max: 110,
      onChange: (double value) {});

  @override
  Widget build(BuildContext context) {
    return slider;
  }
}
