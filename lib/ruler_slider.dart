import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ruler_picker/ruler_picker.dart';

class RulerSlider extends StatefulWidget {
  @override
  _RulerSliderState createState() => _RulerSliderState();
}

class _RulerSliderState extends State<RulerSlider> {
  RulerPickerController rulerPickerController;
  TextEditingController textEditingController;
  num showValue = 0;

  @override
  void initState() {
    super.initState();
    rulerPickerController = RulerPickerController(value: 0);
    textEditingController = TextEditingController(text: '0');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: RulerPicker(
            backgroundColor: Color(0xffF47B78).withOpacity(0.9),
            controller: rulerPickerController,
            onValueChange: (value) {
              setState(() {
                textEditingController.text = value.toString();
              });
            },
            width: 350,
            height: 130,
          ),
        ),
        Column(
          children: [
            Container(
              child: Text(
                'Height',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            Container(
              width: 52,
              child: Column(
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  CupertinoTextField(
                    controller: textEditingController,
                    onChanged: (value) {
                      showValue = int.parse(value);
                    },
                    onEditingComplete: () {
                      rulerPickerController.value = showValue;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
