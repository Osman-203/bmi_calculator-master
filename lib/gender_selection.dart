import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  CircularButton({this.onPress, this.icon});
  final Function onPress;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: icon,
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
        height: 75.0,
        width: 80.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      fillColor: Color(0xffe36bae),
    );
  }
}
